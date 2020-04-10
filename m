Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA961A4596
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 13:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:References:
	Message-ID:Date:Mime-Version:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WYBAl8bf+cqyya5JvaGj7NspiWvjGsAbJ1x26VHpgI=; b=QP3IjQGWjI/EPD
	7ExfkJ39osAYfZq1P8Yp1PEIM+qV4PArD2SjJvNEEjAaVonXMKoTwXluKAlv7fze1UcQlYNwA4uPa
	Hk57hsqIsaJX0Wul7KLlv4ejKjcUTYXRs7yDMOv7TkxTp1gkmRAPCKTApg3EgwZeM+FIg7ko3XQPp
	sFYgxleYCPT6ma6SoGuGo/2+vscVsXop7CWO8G5Gy4awyfsH0qP/weBuPT93H8p02vev04X9b8/7m
	L2LMmXkm/Kvxy0Qq9VkSNW2cbWjhHJ7Cx8Joyb5duA01J0OwZdR0Hgij3OC4Ge8vBJXzkvAK0DGjH
	RgEYvMzx7R2Kn3t8N4Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrl7-0008VU-7r; Fri, 10 Apr 2020 11:23:41 +0000
Received: from smtpbg429.qq.com ([183.3.255.33] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrky-0008Ua-EI
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 11:23:35 +0000
X-QQ-GoodBg: 0
X-QQ-SSF: 00100000000000F0
X-QQ-FEAT: yN/ROybvCA6hBIuXTQ6HGPt5pmDZ6UPlpXtbzrxmcDSNQYdt9+zEWVuPQFdDO
 8q5UcNqpEQTOtd/aDL7MBSno+BWVCNPKbfVF8Ky3Rm+cCY3KFfe6UXtmYrkSQnKSQN+49Qf
 /SAlz9nUpOvFOCn3ApWylZVXQC++HwxtvuOKgWIp0fNdwjqoO8SsTmfclU023WALN/LszaP
 uTdh48+Tlcyak8hru6jsyX75V78H4kVqk+oCohGWGVdhcOkq7ni8NqQaorNO0lqhCTglJjB
 b6zfv05N5v+UJ5V5ikmYoJRCKo2AFXpAxnvxrY/WgkKQrFAeEHlCth3qRbj8XyXmiHPMQaF
 eOT3C1H
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 58.152.211.194
X-QQ-STYLE: 
X-QQ-mid: logic615t1586517730t9652391
From: "=?utf-8?B?Z3VpbGluLndhbmc=?=" <guilin.wang@gl-inet.com>
To: "=?utf-8?B?UGF1bCBGZXJ0c2Vy?=" <fercerpav@gmail.com>
Mime-Version: 1.0
Date: Fri, 10 Apr 2020 19:22:10 +0800
X-Priority: 3
Message-ID: <tencent_0151EEAE23D8D82C2EB37A96@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
 <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
 <tencent_180A37163F380F9E4F3D22A9@qq.com>
 <20200410111002.GC23797@home.paul.comp>
In-Reply-To: <20200410111002.GC23797@home.paul.comp>
X-QQ-ReplyHash: 3870875535
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Fri, 10 Apr 2020 19:22:11 +0800 (CST)
Feedback-ID: logic:gl-inet.com:qybgweb:qybgweb10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_042332_846324_ACA36E29 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [183.3.255.33 listed in list.dnswl.org]
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
Cc: =?utf-8?B?TWFydGluIEJsdW1lbnN0aW5nbA==?=
 <martin.blumenstingl@googlemail.com>,
 =?utf-8?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi , MartinOur 
       Watchdog uses two GPIO to control, one is to use pulse to switch the watchdog, one GPIO is used to feed the dog, specifically the external single-chip to feed the dog, now the external single-chip cannot detect the level change of GPIO I now suspect that the wdt-gpio delay is too short, and the microcontroller part has not detected a falling edge change. I tried both toggle and level, but unfortunately both failed, and I will continue to test.

  ------------------ Original ------------------From:  "Paul Fertser"<fercerpav@gmail.com>;Date:  Fri, Apr 10, 2020 07:10 PMTo:  "guilin.wang"<guilin.wang@gl-inet.com>; Cc:  "Martin Blumenstingl"<martin.blumenstingl@googlemail.com>; "openwrt-devel"<openwrt-devel@lists.openwrt.org>; Subject:  Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200 (GL.iNet) Hi,

On Fri, Apr 10, 2020 at 06:55:59PM +0800, guilin.wang wrote:
> but found that the dog could not be fed successfully.

Why exactly?

> Our external microcontroller feeds the dog. The cpu just gives the
> microcontroller a trigger signal, but I tested that the
> microcontroller cannot detect the level change using this method

How is it able to detect the level change using another method then,
what exactly makes them different?

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
