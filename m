Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143771A7179
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 05:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:References:
	Message-ID:Date:Mime-Version:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGXNuotGHgUr3fw7iLqkxiCmNOndsG7neASDQQxUPtE=; b=h34l3YNKDeteYQ
	sOkIspBY2XDGZ9PjlncGZot5dJSe4kqhdt1bUTUTPCPxvSnbehL/iPaYiO1XT9WSNxgzcOEqESvpn
	1SXDQv5DCIyVRPY4jVMTvMyhWDZIJNcjJ2Ib3vjRyVjoOiD2zedRwRBIUtn1PiMezb7LzI2ZuSa81
	fQG33bRsccMSTcHqpr3jxI3QlcsxqVTvd86n85RWd6m7I7ZAgDLY7f4CSqbp7L5yHwi93/oF/buIw
	alRQO9Lfl97Mi3y0Zqo0ObdhprKyW6xkmeGnhCoMRmFBw7QgTc5ICvgCQRTB77hQ56iHGxfdzVAsj
	0H/hVGUhkwCW8E6BWPZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBv8-00088V-PU; Tue, 14 Apr 2020 03:07:30 +0000
Received: from smtpbg556.qq.com ([183.3.226.209] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBuz-00086X-PY
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 03:07:26 +0000
X-QQ-GoodBg: 0
X-QQ-SSF: 00100000000000F0
X-QQ-FEAT: fVZeSYFzHq1kFzm4xIUnTt8/KkbR7GoRVZI/pSeJma19prtkEhCm8bxVJp4Me
 70DZIuWlByZWP4aSJANIAIWBSjQwFupHwW7gjq3xYu2lizRQ9us+PyCRF2dMj8+9AcCrAOL
 qcMHpJcC26xTpTK4g2D2oxAASLlHNbiAUM0I/9jcc2rebqK1gq09josHFDHYFhl4y+WTi/G
 GtRqSwLr1LtE8pccChnfMCjp4MsQ0e4BekMKlvfK/rgIuyr9WTFJY9voelEluoacTD4cZ1s
 1ZW7w7sQLqwcw3ZMT+PWaolQfg2hc2i+lw/exY8ZdJvatyc3ZVPUra7TNk64uBjcZnPmxqV
 TKrKKcq
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 116.30.95.89
X-QQ-STYLE: 
X-QQ-mid: logic615t1586833550t9034507
From: "=?utf-8?B?Z3VpbGluLndhbmc=?=" <guilin.wang@gl-inet.com>
To: "=?utf-8?B?UGF1bCBGZXJ0c2Vy?=" <fercerpav@gmail.com>
Mime-Version: 1.0
Date: Tue, 14 Apr 2020 11:05:50 +0800
X-Priority: 3
Message-ID: <tencent_11CC692B7D599A786084014A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
 <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
 <tencent_180A37163F380F9E4F3D22A9@qq.com>
 <20200410111002.GC23797@home.paul.comp>
 <tencent_0151EEAE23D8D82C2EB37A96@qq.com>
 <tencent_6BC0797643213F582FBE3256@qq.com>
 <20200411110652.GA20080@home.paul.comp>
In-Reply-To: <20200411110652.GA20080@home.paul.comp>
X-QQ-ReplyHash: 2653578008
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Tue, 14 Apr 2020 11:05:51 +0800 (CST)
Feedback-ID: logic:gl-inet.com:qybgweb:qybgweb11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_200722_163480_CFC742FE 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [183.3.226.209 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [183.3.226.209 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200
 (GL.iNet)
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?utf-8?B?TWFydGluIEJsdW1lbnN0aW5nbA==?=
 <martin.blumenstingl@googlemail.com>,
 =?utf-8?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi, Paul    
   Thanks for your answers.
How often do you really need to feed the watchdog?
>> 10s a falling edge triggers dog feeding 
Why do you have an additional MCU taking care of capturing the level change, what else isit doing? 
>>MCU is also responsible for other functions, external RTC, and some indicators
Can this MCU firmware be upgraded without external hardware?
>>No, 
With gpio_wdt driver when you're using LEVEL mode the GPIO will be
pulsed (high level for 1 us (microsecond!)) each time the watchdog is
pinged. With TOGGLE mode the GPIO will be toggled each ping.
>> Thank you for your explanation, I should use TOGGLE mode,
  ------------------ Original ------------------From:  "Paul Fertser"<fercerpav@gmail.com>;Date:  Sat, Apr 11, 2020 07:07 PMTo:  "guilin.wang"<guilin.wang@gl-inet.com>; Cc:  "Martin Blumenstingl"<martin.blumenstingl@googlemail.com>; "openwrt-devel"<openwrt-devel@lists.openwrt.org>; Subject:  Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200 (GL.iNet) Hi,

On Fri, Apr 10, 2020 at 07:23:44PM +0800, guilin.wang wrote:
> now the external single-chip cannot detect the level change of GPIO

How often do you really need to feed the watchdog? Why do you have an
additional MCU taking care of capturing the level change, what else is
it doing? Can this MCU firmware be upgraded without external hardware?

> I now suspect that the wdt-gpio delay is too short and the
> microcontroller part has not detected a falling edge change. I tried
> both toggle and level,

With gpio_wdt driver when you're using LEVEL mode the GPIO will be
pulsed (high level for 1 us (microsecond!)) each time the watchdog is
pinged. With TOGGLE mode the GPIO will be toggled each ping.

Default watchdog ping frequency in procd is 5 seconds.

You can see more info on [0].

> but unfortunately both failed, and I will continue to test.

It's not a matter of testing, it's a matter of understanding what's
really going on.

HTH

[0] https://openwrt.org/docs/guide-user/hardware/watchdog

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
