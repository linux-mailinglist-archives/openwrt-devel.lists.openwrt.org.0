Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673CF1816CC
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 12:26:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ktQG5rfXfkw8gZ+fVJc2/Rb51hLt72N2GwHjaAoEJbA=; b=n3oh7tlDxgpsnB
	NajShqSK9kzeYyOh2c/DPGxTQpYhTdrgPbWs/2y/k/JraQQBYrjRUzFHyZBn5sd72wkIrG+beCbu9
	/sE9jvTnyyUkuvV/STl+An6a3gE1QFbaS4npZmP6XSMXf01lw6hLWJ/OgBdTTe7LJLeHY/A9bROt1
	3aHY9tduXlqgwynR6vxqqgu6qKiqZREAUQsAAIAOi1Zkl/r4oVGr3wMnV22CROdwCQZd5Z4O/FIFn
	zUUynfuw1epRxUuDieElX7mcEbc2+snfbT3WiFT8PLpouEDq5CFMFw02V70FDVwXv9ywi+fUQSaNo
	F7quxL8TjzYYkqyLHG0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzV8-0007V6-3S; Wed, 11 Mar 2020 11:26:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzUz-0007Uk-HG
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 11:26:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 18EFD3381;
 Wed, 11 Mar 2020 12:26:03 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 4343d752;
 Wed, 11 Mar 2020 12:25:50 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Mar 2020 12:25:58 +0100
Message-Id: <20200311112558.21961-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042605_722220_85A097AC 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] imx6: switch to 5.4 kernel
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Tim Harvey <tharvey@gateworks.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2VlbXMgdG8gYmUgd29ya2luZyBmaW5lLCBpdCdzIDk5LjklIHVwc3RyZWFtIHN0dWZmIGFueXdh
eS4gTGV0cyBzdGFydAp3aWRlciB1c2VyYmFzZSB0ZXN0aW5nLgoKQ2M6IFRpbSBIYXJ2ZXkgPHRo
YXJ2ZXlAZ2F0ZXdvcmtzLmNvbT4KQ2M6IEtvZW4gVmFuZGVwdXR0ZSA8a29lbi52YW5kZXB1dHRl
QG5jZW50cmljLmNvbT4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4KLS0tCiB0YXJnZXQvbGludXgvaW14Ni9NYWtlZmlsZSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9pbXg2L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L2lteDYvTWFrZWZpbGUKaW5kZXggOGMwNzcw
ZDA0MTkwLi4wNjhkN2VmNWE0ZjcgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9pbXg2L01ha2Vm
aWxlCisrKyBiL3RhcmdldC9saW51eC9pbXg2L01ha2VmaWxlCkBAIC0xNCw3ICsxNCw3IEBAIENQ
VV9UWVBFOj1jb3J0ZXgtYTkKIENQVV9TVUJUWVBFOj1uZW9uCiBNQUlOVEFJTkVSOj1MdWthIFBl
cmtvdiA8bHVrYUBvcGVud3J0Lm9yZz4KIAotS0VSTkVMX1BBVENIVkVSOj00LjE5CitLRVJORUxf
UEFUQ0hWRVI6PTUuNAogS0VSTkVMX1RFU1RJTkdfUEFUQ0hWRVI6PTUuNAogCiBpbmNsdWRlICQo
SU5DTFVERV9ESVIpL3RhcmdldC5tawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
