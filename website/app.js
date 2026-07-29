const root = document.documentElement;
[
  ['theme-select', 'theme'],
  ['motion-select', 'motion']
].forEach(([id, attribute]) => {
  const control = document.querySelector(`#${id}`);
  const queryValue = new URLSearchParams(window.location.search).get(attribute);
  if (queryValue && [...control.options].some((option) => option.value === queryValue)) control.value = queryValue;
  root.dataset[attribute] = control.value;
  control.addEventListener('change', () => { root.dataset[attribute] = control.value; });
});
