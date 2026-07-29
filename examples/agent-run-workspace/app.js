const dialog = document.querySelector('#approval-dialog');
const confirm = document.querySelector('#approval-confirm');
const approveOnce = document.querySelector('#approve-once');
const feedback = document.querySelector('#approval-feedback');
const root = document.documentElement;

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
  button.addEventListener('click', () => dialog.showModal());
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
