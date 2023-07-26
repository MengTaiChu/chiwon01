import Mock from 'mockjs'
import homeFootApi from './mockData/homeFoot'
import homeHaed from './mockData/homeHaed'
import homeIt from './mockData/homeIt'
Mock.mock('/homeFoot/getData', homeFootApi.getHomeFootData)
Mock.mock('/homeHaed/getData', homeHaed.getHomeHaedData)
Mock.mock('/homeIt/getData', homeIt.getItData)