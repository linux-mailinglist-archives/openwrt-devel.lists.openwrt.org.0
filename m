Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B4F12702D
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxzs19c+z3eagzidcGciNKyWxNo2Bjyu8kAa/MHhMZ0=; b=uEx3CELmSeknmc
	gOoktEw7QBlJwe6j1CBpk5xKTFZn0YZO39l3UZwugoAsdkOSMlV3nKsuKaSk4VTXdg4v9fzkcUt5h
	jF+8pg5w2ZJrGGmsGI2gy3vI4r7NZXfeEybVgMXzfjVRrKp1y8G3paYloC8x5msX9kTqkH8OvOfvZ
	s3Whb7+2qaKQiFGRLpfAmyXGV0a35/wM8ssHZHV+6/DquzIGRG93J0Q+wdQDrOT7tc9VkNpSThGng
	mF88bdI0Z34BJrhY5lbN5ekDsRcHHTtvfL0wIi4uoJlr8FZOkYpqpOlAYVJuNdX+Imv5pmM3KpabI
	PODm4O0payqzBUUUzwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3r6-0005NL-Qe; Thu, 19 Dec 2019 22:01:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3oq-0000td-K5
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B8ED94B50;
 Thu, 19 Dec 2019 22:58:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a37ec9fd;
 Thu, 19 Dec 2019 22:58:37 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:28 +0100
Message-Id: <20191219215836.21773-13-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135852_827778_4D96960D 
X-CRM114-Status: UNSURE (   6.97  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 12/20] test: fuzz: add
 blobmsg_check_attr crashes
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

ID09MzE3NzU9PUVSUk9SOiBBZGRyZXNzU2FuaXRpemVyOiBTRUdWIG9uIHVua25vd24gYWRkcmVz
cyAweDYwNDAwMGE3YzcxNQogPT0zMTc3NT09VGhlIHNpZ25hbCBpcyBjYXVzZWQgYnkgYSBSRUFE
IG1lbW9yeSBhY2Nlc3MuCiAgICAjMCBibG9ibXNnX2NoZWNrX2F0dHIgYmxvYm1zZy5jOjQ4OjYK
ICAgICMxIGJsb2Jtc2dfcGFyc2VfYXJyYXkgYmxvYm1zZy5jOjExODo4CiAgICAjMiBmdXp6X2Js
b2Jtc2dfcGFyc2UgdGVzdC1ibG9ibXNnLXBhcnNlLWZ1enplci5jOjM1OjIKClNpZ25lZC1vZmYt
Ynk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLi4uL2NyYXNoLTRjNGQyYzNj
OWFkZTVkYTkzNDc1MzRlMjkwMzA1YzNiOTc2MGY2MjcgfCBCaW4gMCAtPiAxNyBieXRlcwogLi4u
L2NyYXNoLTVlOTkzN2IxOTdjODhiZjRlN2I3ZWUyNjEyNDU2Y2FkNGNiODNmNWIgfCBCaW4gMCAt
PiA4NiBieXRlcwogLi4uL2NyYXNoLTc1YjE0NmM0ZTZmYWM2NGQzZTYyMjM2YjI3YzY0YjUwNjU3
YmFiMmEgfCBCaW4gMCAtPiA0IGJ5dGVzCiAuLi4vY3Jhc2gtODEzZjNlNjg2NjFkYTA5YzI2ZDRh
ODdkYmI5ZDUwOTllOTJiZTUwZiB8IEJpbiAwIC0+IDM2IGJ5dGVzCiAuLi4vY3Jhc2gtZTJmZDVl
Y2IzYjM3OTI2NzQzMjU2ZjEwODNmNDdhMDdjMzllMTBjMiB8IEJpbiAwIC0+IDY2IGJ5dGVzCiA1
IGZpbGVzIGNoYW5nZWQsIDAgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBt
b2RlIDEwMDY0NCB0ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC00YzRkMmMzYzlhZGU1ZGE5MzQ3NTM0
ZTI5MDMwNWMzYjk3NjBmNjI3CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvZnV6ei9jb3JwdXMv
Y3Jhc2gtNWU5OTM3YjE5N2M4OGJmNGU3YjdlZTI2MTI0NTZjYWQ0Y2I4M2Y1YgogY3JlYXRlIG1v
ZGUgMTAwNjQ0IHRlc3RzL2Z1enovY29ycHVzL2NyYXNoLTc1YjE0NmM0ZTZmYWM2NGQzZTYyMjM2
YjI3YzY0YjUwNjU3YmFiMmEKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9mdXp6L2NvcnB1cy9j
cmFzaC04MTNmM2U2ODY2MWRhMDljMjZkNGE4N2RiYjlkNTA5OWU5MmJlNTBmCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgdGVzdHMvZnV6ei9jb3JwdXMvY3Jhc2gtZTJmZDVlY2IzYjM3OTI2NzQzMjU2ZjEw
ODNmNDdhMDdjMzllMTBjMgoKZGlmZiAtLWdpdCBhL3Rlc3RzL2Z1enovY29ycHVzL2NyYXNoLTRj
NGQyYzNjOWFkZTVkYTkzNDc1MzRlMjkwMzA1YzNiOTc2MGY2MjcgYi90ZXN0cy9mdXp6L2NvcnB1
cy9jcmFzaC00YzRkMmMzYzlhZGU1ZGE5MzQ3NTM0ZTI5MDMwNWMzYjk3NjBmNjI3Cm5ldyBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAuLjJjYTM5MmYwYzYxMDlhNGIwZDZjZjQ0ZWQxOGQ2OTEzM2FkZGQ4Y2EKR0lUIGJpbmFyeSBw
YXRjaApsaXRlcmFsIDE3Ck5jbVpRKFV8QGNWMzs8RXAzI2I0OQoKbGl0ZXJhbCAwCkhjbVY/ZDAw
MDAxCgpkaWZmIC0tZ2l0IGEvdGVzdHMvZnV6ei9jb3JwdXMvY3Jhc2gtNWU5OTM3YjE5N2M4OGJm
NGU3YjdlZTI2MTI0NTZjYWQ0Y2I4M2Y1YiBiL3Rlc3RzL2Z1enovY29ycHVzL2NyYXNoLTVlOTkz
N2IxOTdjODhiZjRlN2I3ZWUyNjEyNDU2Y2FkNGNiODNmNWIKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMC4uYjQ5ZDNlN2Rl
ODZlMjQwMmYxZDE4MmFhZDc0ODE5YTJjMGFiZDhjYwpHSVQgYmluYXJ5IHBhdGNoCmxpdGVyYWwg
ODYKT2NtWlEoVXxfeVJicFFZI3M2PitoCgpsaXRlcmFsIDAKSGNtVj9kMDAwMDEKCmRpZmYgLS1n
aXQgYS90ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC03NWIxNDZjNGU2ZmFjNjRkM2U2MjIzNmIyN2M2
NGI1MDY1N2JhYjJhIGIvdGVzdHMvZnV6ei9jb3JwdXMvY3Jhc2gtNzViMTQ2YzRlNmZhYzY0ZDNl
NjIyMzZiMjdjNjRiNTA2NTdiYWIyYQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi4zOWFlODU5Y2MwMGNlMGM0YjgwYzVh
MWQwYmYwMzFiNmE2MzEwY2UwCkdJVCBiaW5hcnkgcGF0Y2gKbGl0ZXJhbCA0CkxjbVpRKFV8PDNP
MDFeTk8KCmxpdGVyYWwgMApIY21WP2QwMDAwMQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2Z1enovY29y
cHVzL2NyYXNoLTgxM2YzZTY4NjYxZGEwOWMyNmQ0YTg3ZGJiOWQ1MDk5ZTkyYmU1MGYgYi90ZXN0
cy9mdXp6L2NvcnB1cy9jcmFzaC04MTNmM2U2ODY2MWRhMDljMjZkNGE4N2RiYjlkNTA5OWU5MmJl
NTBmCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAuLjYyMzM4ZmY0ZjA4MDE1MjlkMGY2NTk4YzAyYmZiYjljNTdiNTUzM2MK
R0lUIGJpbmFyeSBwYXRjaApsaXRlcmFsIDM2ClFjbVpRKFV8e31fN2Nlc2UwMU9Rcz8qSVMqCgps
aXRlcmFsIDAKSGNtVj9kMDAwMDEKCmRpZmYgLS1naXQgYS90ZXN0cy9mdXp6L2NvcnB1cy9jcmFz
aC1lMmZkNWVjYjNiMzc5MjY3NDMyNTZmMTA4M2Y0N2EwN2MzOWUxMGMyIGIvdGVzdHMvZnV6ei9j
b3JwdXMvY3Jhc2gtZTJmZDVlY2IzYjM3OTI2NzQzMjU2ZjEwODNmNDdhMDdjMzllMTBjMgpuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwLi45MmEzMGQyMzcwNmVlNjI4ZDRhMDc2ZmNiZTBiNzYxMzY1MGMyMDM5CkdJVCBiaW5h
cnkgcGF0Y2gKbGl0ZXJhbCA2NgpRY21aUShVfHt9RjBicGhaMEdPRk8oRXREZAoKbGl0ZXJhbCAw
CkhjbVY/ZDAwMDAxCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
