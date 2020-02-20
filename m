Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5952D165A9A
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 10:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lX1uaAOL8X0gMrTVhSR00u2aSxk6WwvK28de1DTTT/A=; b=tYIMcxn/LqYq9Q
	wtHEtPnhUqQ8pvltx7ItQdQHz+VDQacLwhpwgAGNBjUWXp+heuxsoBxQrxDFFQBNwwIRrmlSMJ9+S
	OEbfhU+sfxkW/VkaAH2gxUSYvUl9WT3OCOTYZR2vqSGpoPLITBQM4OSpYb6V/L9koiaYYGu8r+wtp
	dagGWXuUfneHk6MHwWtov/1V9Md/qsPS91sSll5pqqNFaiuHDTeGJcD/BqBVgjP77rqX0o075RVZK
	pjdbhTWblAWWemeeEvW1u57LQMcX9HkiMEalUGRbEjh24M5nOJWkucNmhS4x4yM211o1pQneeOvYa
	Dbuc3u8k2BWRgGkw0Twg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iZe-00019s-EE; Thu, 20 Feb 2020 09:56:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iZX-000199-CW
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 09:56:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3A70137DD;
 Thu, 20 Feb 2020 10:56:39 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 0256afa8;
 Thu, 20 Feb 2020 10:56:26 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 10:56:26 +0100
Message-Id: <20200220095626.24906-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_015643_579338_3ECC5514 
X-CRM114-Status: UNSURE (   5.83  )
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
Subject: [OpenWrt-Devel] [PATCH] ppp: activate PIE ASLR by default
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

VGhpcyBhY3RpdmF0ZXMgUElFIEFTTFIgc3VwcG9ydCBieSBkZWZhdWx0IHdoZW4gdGhlIHJlZ3Vs
YXIgb3B0aW9uIGlzCnNlbGVjdGVkLgoKU2l6ZSBpbmNyZWFzZSBvbiBpbXg2OgoKIDExMjY4MSBw
cHBfMi40LjgtMl9hcm1fY29ydGV4LWE5X25lb24uaXBrCiAxMjE4NzkgcHBwXzIuNC44LTJfYXJt
X2NvcnRleC1hOV9uZW9uLmlwawogPSA5MTk4IGRpZmYKClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9N
YWtlZmlsZSB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0
IGEvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9NYWtlZmlsZSBiL3BhY2thZ2UvbmV0d29y
ay9zZXJ2aWNlcy9wcHAvTWFrZWZpbGUKaW5kZXggYjQzYTQwYmRjZWVjLi45ZTQyY2I3NDM3NDUg
MTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9wcHAvTWFrZWZpbGUKKysrIGIv
cGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3BwcC9NYWtlZmlsZQpAQCAtMjQsNiArMjQsNyBAQCBQ
S0dfVkVSU0lPTjo9JChQS0dfUkVMRUFTRV9WRVJTSU9OKQogCiBQS0dfQlVJTERfREVQRU5EUzo9
bGlicGNhcAogCitQS0dfQVNMUl9QSUVfUkVHVUxBUjo9MQogUEtHX0JVSUxEX1BBUkFMTEVMOj0x
CiBQS0dfSU5TVEFMTDo9MQogCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
