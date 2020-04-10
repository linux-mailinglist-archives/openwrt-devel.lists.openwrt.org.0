Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969891A456C
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 12:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:References:
	Message-ID:Date:Mime-Version:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3s2lw8hCqaoqrg0xO65H5sTW8QN54JNfM3vmfiQPCUU=; b=UX6HZkcDYv6qP4
	HQk0o9E5bYKtU+GxrU/i0EremLN0kvMuNNc9GQpYufbawdKtljQkXJ5olrUJTTRmy6Pb/38LnNObm
	dp5spMyMgPAiyrR2Fw0iODn6yWakNnz4P68KSf91xD9rOUE9ckB9mkePHjGuSXva/iEqLCEZofMHH
	N+HqUSE1VqJgqk/I+7WVr83zr2NuiOBnpnYMB7WLoQmxL5cSl+Rn2jFGvIPaAHUNydjszaoeF6qdT
	bTTA+Z4g7lcTMukHZ92FGly4a/HTKezrqH4vVPTWd+NM5cEWxw1PigOGa24W0eGAOwdMLujgiiwYb
	OCeLqTugxbpSLIerPOAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrKq-0000sv-Ct; Fri, 10 Apr 2020 10:56:32 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrKh-0000qR-Sf
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 10:56:27 +0000
X-QQ-GoodBg: 0
X-QQ-SSF: 00100000000000F0
X-QQ-FEAT: OCW7qCCTrGciHSt71H6cqlNzpHDAu/Fz+bHY5vS3Y6o/0OyEao84gMruKYtcK
 6dK2NPp7vleQZUT9TM3reAui4R4E+3xX6aHm67ZTvzJg/sjXCTbPn14pXJ/2vxu2tV2pw0s
 Mc5TS6Vi03Uukr6IFsArR8y8oGlFs0LgTvx4tyzB3CgcPXWXGAfCVAWiSOmvn9dJpT9Nkx1
 oOg9UpX9YZI6mukDr6+doMOB2RcQKjOKKEOhge+nmPhsV2phTT8OgTE8xjtLgMMDm2V5uiJ
 KkQiYdWtvDBSPjTPWEINHIkgQgFDkhg7CwGgz8rdwU8ZAc9UUe37AjsaoLCfZIvjgBvQ==
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 58.152.211.194
X-QQ-STYLE: 
X-QQ-mid: logic615t1586516159t300279
From: "=?utf-8?B?Z3VpbGluLndhbmc=?=" <guilin.wang@gl-inet.com>
To: "=?utf-8?B?TWFydGluIEJsdW1lbnN0aW5nbA==?="
 <martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Date: Fri, 10 Apr 2020 18:55:59 +0800
X-Priority: 3
Message-ID: <tencent_180A37163F380F9E4F3D22A9@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
 <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
In-Reply-To: <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
X-QQ-ReplyHash: 4249271443
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Fri, 10 Apr 2020 18:56:00 +0800 (CST)
Feedback-ID: logic:gl-inet.com:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_035624_302827_9DDB8663 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.254.200.128 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: =?utf-8?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi ,Martin
   Thank your for your suggest, I initially followed this method, but found that the dog could not be fed successfully. Our external microcontroller feeds the dog. The cpu just gives the microcontroller a trigger signal, but I tested that the microcontroller cannot detect the level change using this method you said So I used the script.

  ------------------ Original ------------------From:  "Martin Blumenstingl"<martin.blumenstingl@googlemail.com>;Date:  Fri, Apr 10, 2020 05:55 PMTo:  "guilin.wang@gl-inet.com"<guilin.wang@gl-inet.com>; Cc:  "openwrt-devel"<openwrt-devel@lists.openwrt.org>; Subject:  Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200 (GL.iNet) Hi,

On Fri, Apr 10, 2020 at 11:47 AM guilin.wang@gl-inet.com
<guilin.wang@gl-inet.com> wrote:
>
> Signed-off-by: guilin.wang@gl-inet.com <guilin.wang@gl-inet.com>
the format should be "your name <email@address.com>"

> ---
>  package/kernel/om-watchdog/Makefile               |  2 +-
>  package/kernel/om-watchdog/files/om-watchdog      | 40 +++++++++++++++++++----
>  package/kernel/om-watchdog/files/om-watchdog.init |  2 ++
>  3 files changed, 37 insertions(+), 7 deletions(-)
why not use a GPIO watchdog node in board.dts instead? see [0] for an example


Martin


[0] https://github.com/torvalds/linux/blob/v5.4/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
