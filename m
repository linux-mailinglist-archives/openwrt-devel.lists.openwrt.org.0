Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAA91FB5BD
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 17:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z9/I2UNN5CQs7mBf21Uvp/0gD2WBWgxPkPalbw+J+Lk=; b=HfONqRETUgbEqk
	x9zP4aLha23n+N+goG2PnU8E7sZkg5W79twbdUwT7O6Wzrh5EazkP4T4FtG7IThzxdXQP2G/WHUDd
	oy23mNrkuNdqVLHlo338WHcrl7SH7ODUNKLKkrsWCoCeKLKVecEAVxo1ck1BA/nxyW1ApIGSL+1XT
	YVt4jT1RqGKYFlfQhqsNYg54m1eGhY9Z3vThDvCVLHj9vJG2avaG5ysseV48uOaDvQ3PyccOW2KeA
	9mtoUOYnlXHAfDa1Ya5d/sLq/L/LwNoX3+9ba4r2h6Rgf1DSXNrw22GxmDFUXMMF87Go4htVemaEY
	kVUfNEZHvIK5B/NWRGjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDGW-0004W1-5a; Tue, 16 Jun 2020 15:12:44 +0000
Received: from lists.nic.cz ([217.31.204.67] helo=mail.nic.cz)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDGN-0001pk-Fr
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jun 2020 15:12:37 +0000
Received: from localhost (unknown
 [IPv6:2001:1488:fffe:6010:a25b:c454:9c62:795e])
 by mail.nic.cz (Postfix) with ESMTPSA id E2C1014050F
 for <openwrt-devel@lists.openwrt.org>; Tue, 16 Jun 2020 17:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1592320190; bh=EtHk/EAhwLJ1PtxAL/1K/aZVyHYlL+1NquphOTcVT7k=;
 h=From:To:Date;
 b=B2BiZvNVxj3KPZPb4l7Jp64deEQ4AsiyZE2Snb2uapTK6KBnbdzja+nir4pg4cqtx
 buZJ/IK1mfONvlPnSBMScPMSQUgduRZKvbLaqJ4ZTRt91POwyrCkH7Apf94++n8KZZ
 YJtVM5HxYFFjbRsPBWAWS4WO2GvfUnRCrMFhSWLc=
From: =?UTF-8?q?Karel=20Ko=C4=8D=C3=AD?= <karel.koci@nic.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 16 Jun 2020 17:07:46 +0200
Message-Id: <20200616150746.30322-1-karel.koci@nic.cz>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
 USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_081235_828538_BEC47F06 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.31.204.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] hostapd: fix compilation of wpa_supplicant
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VWJ1cyBwYXRjaCBhcyBpdCBzZWVtcyBoYXZlIGJlZW4gYnJva2VuIGJ5IHNvbWUgcmViYXNlIGlu
IHRoZSBwYXN0IGFzCnRoZSBsb2NhdGlvbiBvZiBsaW5lIHRoYXQgYWRkcyB1YnVzIG9iamVjdCBm
aWxlIHdhcyBpbiBjb25kaXRpb24gZm9yCkNPTkZJR19NQUNTRUMuIFRoYXQgY29uZGl0aW9uIHdh
cyBhZGRpbmcgb2JqZWN0IGZpbGVzIHRoYXQgYXJlIG5vdAp0b3VjaGVkIGJ5IHVidXMgcGF0Y2gu
IFRoaXMgbWVhbnMgdWJ1cy5vIGRvZXMgbm90IGhhdmUgdG8gYmUgaW5jbHVkZWQgaW4KdGhhdCBj
YXNlLiBXaGVuIGl0IGhhcyB0byBiZSBhbmQgd2hlbiBidWlsZCBmYWlscyBpcyB3aGVuIENPTkZJ
R19BUCBpcwpzZXQuIEFsbCBmaWxlcyBpbmNsdWRlZCBpbiB3cGFfc3VwcGxpY2FudCB0aGF0IGFy
ZSB0b3VjaGVkIGJ5IHRoaXMgcGF0Y2gKYXJlIGluIHRoaXMgY29uZGl0aW9uLiBUaGlzIG1lYW5z
IHRoYXQgdGhpcyBpcyBmb3Igc3VyZSB0aGUgb3JpZ2luYWwKcGxhY2UgZm9yIGl0LgoKU2lnbmVk
LW9mZi1ieTogS2FyZWwgS2/EjcOtIDxrYXJlbC5rb2NpQG5pYy5jej4KLS0tCiAuLi4vc2Vydmlj
ZXMvaG9zdGFwZC9wYXRjaGVzLzYwMC11YnVzX3N1cHBvcnQucGF0Y2ggICAgICAgfCA4ICsrKyst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL3BhdGNoZXMvNjAwLXVi
dXNfc3VwcG9ydC5wYXRjaCBiL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL3BhdGNo
ZXMvNjAwLXVidXNfc3VwcG9ydC5wYXRjaAppbmRleCBkMmQ0NWFjOTcxLi5mMGE2MzdlNGI2IDEw
MDY0NAotLS0gYS9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvaG9zdGFwZC9wYXRjaGVzLzYwMC11
YnVzX3N1cHBvcnQucGF0Y2gKKysrIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQv
cGF0Y2hlcy82MDAtdWJ1c19zdXBwb3J0LnBhdGNoCkBAIC0yODQsMTYgKzI4NCwxNiBAQAogIGlm
ZGVmIENPTkZJR19DT0RFX0NPVkVSQUdFCiAgQ0ZMQUdTICs9IC1PMCAtZnByb2ZpbGUtYXJjcyAt
ZnRlc3QtY292ZXJhZ2UKICBMSUJTICs9IC1sZ2NvdgotQEAgLTg4Nyw2ICs4OTMsOSBAQCBPQkpT
ICs9IC4uL3NyYy9wYWUvaWVlZTgwMl8xeF9zZWN5X29wcy5vCi0gaWZkZWYgQ09ORklHX0FQCi0g
T0JKUyArPSAuLi9zcmMvYXAvd3BhX2F1dGhfa2F5Lm8KK0BAIC05NTYsNiArOTYyLDkgQEAgaWZk
ZWYgQ09ORklHX0NUUkxfSUZBQ0VfTUlCCisgQ0ZMQUdTICs9IC1EQ09ORklHX0NUUkxfSUZBQ0Vf
TUlCCiAgZW5kaWYKKyBPQkpTICs9IC4uL3NyYy9hcC9jdHJsX2lmYWNlX2FwLm8KICtpZmRlZiBD
T05GSUdfVUJVUwogK09CSlMgKz0gLi4vc3JjL2FwL3VidXMubwogK2VuZGlmCiAgZW5kaWYKICAK
LSBpZmRlZiBDT05GSUdfSUVFRTgwMjFYX0VBUE9MCisgQ0ZMQUdTICs9IC1ERUFQX1NFUlZFUiAt
REVBUF9TRVJWRVJfSURFTlRJVFkKIC0tLSBhL3dwYV9zdXBwbGljYW50L3dwYV9zdXBwbGljYW50
LmMKICsrKyBiL3dwYV9zdXBwbGljYW50L3dwYV9zdXBwbGljYW50LmMKIEBAIC02Nzk3LDYgKzY3
OTcsOCBAQCBzdHJ1Y3Qgd3BhX3N1cHBsaWNhbnQgKiB3cGFfc3VwcGxpY2FudF9hCi0tIAoyLjI3
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
