const dialog = document.querySelector('#approval-dialog');
const confirm = document.querySelector('#approval-confirm');
const approveOnce = document.querySelector('#approve-once');
const feedback = document.querySelector('#approval-feedback');
const root = document.documentElement;
const runStatus = document.querySelector('#run-status');
const runFeedback = document.querySelector('#run-feedback');
const pauseRun = document.querySelector('#pause-run');
const cancelRun = document.querySelector('#cancel-run');
const cancelDialog = document.querySelector('#cancel-dialog');
const cancelConfirm = document.querySelector('#cancel-confirm');
const cancelOnce = document.querySelector('#cancel-once');
const timelineFilter = document.querySelector('#timeline-filter');
const completedTimelineItems = document.querySelectorAll('.timeline-item.complete');
const artifactDialog = document.querySelector('#artifact-dialog');
const artifactDialogTitle = document.querySelector('#artifact-dialog-title');
const artifactDialogContent = document.querySelector('#artifact-dialog-content');

const preferenceControls = [
  ['theme-select', 'theme'],
  ['transparency-select', 'transparency'],
  ['motion-select', 'motion']
];

preferenceControls.forEach(([id, attribute]) => {
  const control = document.querySelector(`#${id}`);
  const queryValue = new URLSearchParams(window.location.search).get(attribute);
  if (queryValue && [...control.options].some((option) => option.value === queryValue)) {
    control.value = queryValue;
  }
  root.dataset[attribute] = control.value;
  control.addEventListener('change', () => { root.dataset[attribute] = control.value; });
});

document.querySelectorAll('[data-open-dialog]').forEach((button) => {
  button.addEventListener('click', () => document.querySelector(`#${button.dataset.openDialog}`).showModal());
});

confirm.addEventListener('change', () => {
  approveOnce.disabled = !confirm.checked;
});

dialog.addEventListener('close', () => {
  if (dialog.returnValue === 'approve') {
    feedback.textContent = '示例状态：已批准本次操作。生产环境仍需由服务端策略执行并记录审计事件。';
  }
  confirm.checked = false;
  approveOnce.disabled = true;
});

document.querySelectorAll('[data-set-approval="rejected"]').forEach((button) => {
  button.addEventListener('click', () => {
    feedback.textContent = '示例状态：审批已拒绝；Agent 应保留证据并请求修改，而不是继续执行。';
  });
});

pauseRun.addEventListener('click', () => {
  const paused = pauseRun.dataset.state !== 'paused';
  pauseRun.dataset.state = paused ? 'paused' : 'active';
  pauseRun.textContent = paused ? '恢复 Run' : '暂停 Run';
  runStatus.className = `status ${paused ? 'status-paused' : 'status-running'}`;
  runStatus.innerHTML = `<span aria-hidden="true"></span>${paused ? '已暂停（示例）' : '等待审批'}`;
  runFeedback.textContent = paused
    ? '示例状态：Run 已暂停；生产环境必须保留执行断点和权限上下文。'
    : '示例状态：Run 已恢复，仍等待本次 R3 审批。';
});

cancelRun.addEventListener('click', () => cancelDialog.showModal());
cancelConfirm.addEventListener('change', () => { cancelOnce.disabled = !cancelConfirm.checked; });
cancelDialog.addEventListener('close', () => {
  if (cancelDialog.returnValue === 'cancel-run') {
    runStatus.className = 'status status-cancelled';
    runStatus.innerHTML = '<span aria-hidden="true"></span>已取消（示例）';
    pauseRun.disabled = true;
    cancelRun.disabled = true;
    runFeedback.textContent = '示例状态：Run 已取消。本页没有执行真实取消操作，也没有外部副作用。';
  }
  cancelConfirm.checked = false;
  cancelOnce.disabled = true;
});

timelineFilter.addEventListener('click', () => {
  const attentionOnly = timelineFilter.getAttribute('aria-pressed') !== 'true';
  timelineFilter.setAttribute('aria-pressed', String(attentionOnly));
  timelineFilter.textContent = attentionOnly ? '显示全部' : '仅看待处理';
  completedTimelineItems.forEach((item) => { item.hidden = attentionOnly; });
  runFeedback.textContent = attentionOnly ? '已隐藏已完成记录。' : '已显示全部执行记录。';
});

const artifactPreviews = {
  brief: ['renewal-risk-brief.md', '包含 18 个已脱敏账户的风险概览、优先级和建议下一步。此处不显示真实客户数据。'],
  csv: ['renewal-risk-accounts.csv', '字段示例：account_id、health_score、renewal_date、evidence_link。联系人信息保持遮蔽。']
};

document.querySelectorAll('[data-artifact]').forEach((button) => {
  button.addEventListener('click', () => {
    const [title, content] = artifactPreviews[button.dataset.artifact];
    artifactDialogTitle.textContent = title;
    artifactDialogContent.textContent = content;
    artifactDialog.showModal();
  });
});
