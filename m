Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0DE4FC9D
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 18:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L52ENTHlCNYnxpcWjIBN71WpLZKFVmP5ytlsHgYupvE=; b=pJ5RpWcEDv74KQ
	L23q1VDYm04JXJF6tlGYHz49pnhTjWo1q/jjk4/kB6SsFdawTHGupZucjA8Ks1ajrUt9knx0QGB35
	L2CHn3guPdv9q8c2Hw1wFdpVKpp6DujaOgussFVxAlfzKeW3mP8JAaNdz5oYm9nYGhcsFwdOmTxbO
	qccgKnFK9cbaXEXES9fY7jK3Y4YfmE+uSyKwKro8PtEmDckuaEVMv0aVdPi+WAf2Ymlojf9zMiSAm
	qO9fmpiCUNnlqtug4zRSO47ClaFsDg4LN+zUMISJFTTOlLEvBF+L/iRPsiaV/P9fUXRcl9mChk5AT
	3gL4ZnHGfO0b9dkp3Ozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf55v-0006jz-L8; Sun, 23 Jun 2019 16:11:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf55H-0006YW-T3
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 16:11:17 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7A8E9398B;
 Sun, 23 Jun 2019 18:11:14 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a8ff40d4;
 Sun, 23 Jun 2019 18:11:12 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Jun 2019 18:11:11 +0200
Message-Id: <1561306271-9516-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_091116_868982_3D7B5EC1 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] kernel: generic: add missing 4.19 config
 symbol
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4ZXMgZm9sbG93aW5nIGtlcm5lbCBidWlsZCBpc3N1ZSBvbiB4ODYvNjQ6CgogUENJIFBGIFN0
dWIgZHJpdmVyIChQQ0lfUEZfU1RVQikgW04vbS95Lz9dIChORVcpCgpTaWduZWQtb2ZmLWJ5OiBQ
ZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRhcmdldC9saW51eC9nZW5lcmljL2Nv
bmZpZy00LjE5IHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWctNC4xOSBiL3RhcmdldC9saW51eC9nZW5l
cmljL2NvbmZpZy00LjE5CmluZGV4IDZiODQ5N2JlNGIwZi4uZTNmMjE3MzNmODFlIDEwMDY0NAot
LS0gYS90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWctNC4xOQorKysgYi90YXJnZXQvbGludXgv
Z2VuZXJpYy9jb25maWctNC4xOQpAQCAtMzY5NSw2ICszNjk1LDcgQEAgQ09ORklHX1BBUlRJVElP
Tl9BRFZBTkNFRD15CiAjIENPTkZJR19QQ0lfTEFZRVJTQ0FQRSBpcyBub3Qgc2V0CiAjIENPTkZJ
R19QQ0lfTVNJIGlzIG5vdCBzZXQKICMgQ09ORklHX1BDSV9QQVNJRCBpcyBub3Qgc2V0CisjIENP
TkZJR19QQ0lfUEZfU1RVQiBpcyBub3Qgc2V0CiAjIENPTkZJR19QQ0lfUFJJIGlzIG5vdCBzZXQK
IENPTkZJR19QQ0lfUVVJUktTPXkKICMgQ09ORklHX1BDSV9SRUFMTE9DX0VOQUJMRV9BVVRPIGlz
IG5vdCBzZXQKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
