Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7987EF1494
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjJxJUj149oHgBIcO9gsPUMQDT+Ur2ZqpUY+QQzWcuk=; b=OqdnElRyKSP7LT
	jW4Hi06slU5ZAdTkYzhbCEDa+68noJxJBrWMgNTw8u6vEZBkCT3e0ckDRi4oYCDjfXualbhwpDZc+
	sLwJgMGHnApmXril/oRV8mUaf0X/L4bDIykZ1U0BLtMILekww+dB9rcPnR4maDpKSYqMos8OjDHPJ
	UvYnF6W/1xgGwUGb98p25x2anwFeLcpfEKc6WRXxGVQOZZ4qypeFpo9DcoUzgrgYgxMl4FBJR5NB6
	slAkEE3IIqE1KCZnti5ssok4D/fS2ZKMPJmOxSfV/nccNk8H4i0O8a5qwoyxvLNuLNqIjOyKARe4c
	RYdYaHrMAIeyYaDpyT0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJ9R-00037Y-IR; Wed, 06 Nov 2019 11:07:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJ7y-0001Sa-Sr
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:05:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 958E46B2A;
 Wed,  6 Nov 2019 12:05:25 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1c920a6c;
 Wed, 6 Nov 2019 12:05:15 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 12:05:11 +0100
Message-Id: <20191106110514.20413-7-ynezz@true.cz>
In-Reply-To: <20191106110514.20413-1-ynezz@true.cz>
References: <20191106110514.20413-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_030531_090790_083DD9F2 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 06/14] hostapd: declare struct wpa_bss
 early
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
 "Leon M. George" <leon@georgemail.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogIkxlb24gTS4gR2VvcmdlIiA8bGVvbkBnZW9yZ2VtYWlsLmV1PgoKd3BzX3N1cHBsaWNh
bnQuaCBhc3N1bWVzIHRoYXQgJ3N0cnVjdCB3cGFfYnNzJyBpcyBmb3J3YXJkIGRlY2xhcmVkIGlm
CkNPTkZJR19XUFMgaXMgbm90IGRlZmluZWQuICBXaXRoIHRoZSBsYXRlciBpbmNsdXNpb24gb2YK
NjAwLXVidXNfc3VwcG9ydCwgdGhlIGlzc3VlIG1hbmlmZXN0cyBpbiB3YXJuaW5ncyBsaWtlIHRo
ZXNlOgoKd3BzX3N1cHBsaWNhbnQuaDoxMTM6MTU6IHdhcm5pbmc6ICdzdHJ1Y3Qgd3BhX2Jzcycg
ZGVjbGFyZWQgaW5zaWRlIHBhcmFtZXRlciBsaXN0IHdpbGwgbm90IGJlIHZpc2libGUgb3V0c2lk
ZSBvZiB0aGlzIGRlZmluaXRpb24gb3IgZGVjbGFyYXRpb24KICAgICAgICBzdHJ1Y3Qgd3BhX2Jz
cyAqYnNzKQogICAgICAgICAgICAgICBefn5+fn5+CgpUaGlzIHBhdGNoIGZvcndhcmQgZGVjbGFy
ZXMgJ3N0cnVjdCB3cGFfYnNzJyByZWdhcmRsZXNzLgoKU2lnbmVkLW9mZi1ieTogTGVvbiBNLiBH
ZW9yZ2UgPGxlb25AZ2VvcmdlbWFpbC5ldT4KW2NvbW1pdCBtZXNzYWdlIGZhY2VsaWZ0XQpTaWdu
ZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgooY2hlcnJ5IHBpY2tlZCBm
cm9tIGNvbW1pdCBmOTc0ZjgyMTNiOTQ1Nzg1ODFiMzVlNmIzZjhmYjFmZDVhMzVmNzUzKQotLS0K
IC4uLi81OTktd3BhX3N1cHBsaWNhbnQtZml4LXdhcm5pbmdzLnBhdGNoICAgICB8IDE5ICsrKysr
KysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvcGF0Y2hlcy81OTkt
d3BhX3N1cHBsaWNhbnQtZml4LXdhcm5pbmdzLnBhdGNoCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9u
ZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvcGF0Y2hlcy81OTktd3BhX3N1cHBsaWNhbnQtZml4LXdh
cm5pbmdzLnBhdGNoIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvcGF0Y2hlcy81
OTktd3BhX3N1cHBsaWNhbnQtZml4LXdhcm5pbmdzLnBhdGNoCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uZTcwZGM2MTQxOWRhCi0tLSAvZGV2L251bGwKKysrIGIvcGFj
a2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvcGF0Y2hlcy81OTktd3BhX3N1cHBsaWNhbnQt
Zml4LXdhcm5pbmdzLnBhdGNoCkBAIC0wLDAgKzEsMTkgQEAKKy0tLSBhL3dwYV9zdXBwbGljYW50
L3dwc19zdXBwbGljYW50LmgKKysrKyBiL3dwYV9zdXBwbGljYW50L3dwc19zdXBwbGljYW50LmgK
K0BAIC05LDYgKzksNyBAQAorICNpZm5kZWYgV1BTX1NVUFBMSUNBTlRfSAorICNkZWZpbmUgV1BT
X1NVUFBMSUNBTlRfSAorIAorK3N0cnVjdCB3cGFfYnNzOworIHN0cnVjdCB3cGFfc2Nhbl9yZXN1
bHRzOworIAorICNpZmRlZiBDT05GSUdfV1BTCitAQCAtMTYsOCArMTcsNiBAQCBzdHJ1Y3Qgd3Bh
X3NjYW5fcmVzdWx0czsKKyAjaW5jbHVkZSAid3BzL3dwcy5oIgorICNpbmNsdWRlICJ3cHMvd3Bz
X2RlZnMuaCIKKyAKKy1zdHJ1Y3Qgd3BhX2JzczsKKy0KKyBzdHJ1Y3Qgd3BzX25ld19hcF9zZXR0
aW5ncyB7CisgCWNvbnN0IGNoYXIgKnNzaWRfaGV4OworIAljb25zdCBjaGFyICphdXRoOwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
