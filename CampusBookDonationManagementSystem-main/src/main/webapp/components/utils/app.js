import { getItem } from "./storage.js"


const whiteList = [
  '/pages/login/index.html',
  '/pages/answerSheet/index.html'
]

export const loginCheck = () => {
  if (!whiteList.includes(location.pathname)) {
    let managerInfo = getItem('managerInfo')
    if (!managerInfo) location.href = "/pages/login/index.html"
  }
}
