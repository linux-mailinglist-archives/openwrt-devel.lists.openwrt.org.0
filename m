Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B47715FA
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 12:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQ766tLCUESAMR8HHGhk3NNXEn7hH2ARrzDNjVAH+kM=; b=OaEcDhIWT2g5cz
	eOoFYMnJ84V9H5kcknooZ3AUQuejLP4ekebauns+Qf4KT2dzKoBo/HIBVnGsUfAuQ5lJD9wQxBL5W
	M93s15YOpQBOyVZWu4gqarPToUyPrZwOaNpG0XI8fydDz+sTn/KlVFzKhPnf0CjAvN1gfW4w4icIh
	LC5/XE4ysPlCyC4Ov4VNN2bpG60a4+Ees0vo6iko1Xl/WcRa3/yh39YLGXUlvo3TdxHe85BpphrNH
	X/xdzBTRR6GM1IQUERjRHyobYmMxRVcNiEoqipVlq9RvG6w+t3d7075+ahrSAkwJ+20Zi4VrHYVgu
	LLOuZUOY6gW36Jo4q7Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hprzA-0000cs-Cu; Tue, 23 Jul 2019 10:25:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpryi-0007vn-JL
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 10:25:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 319CB3C68;
 Tue, 23 Jul 2019 12:25:03 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b9c876a8;
 Tue, 23 Jul 2019 12:24:56 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 23 Jul 2019 12:24:52 +0200
Message-Id: <20190723102452.30621-2-ynezz@true.cz>
In-Reply-To: <20190723102452.30621-1-ynezz@true.cz>
References: <20190723102452.30621-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_032505_042687_0333B974 
X-CRM114-Status: UNSURE (   5.23  )
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
Subject: [OpenWrt-Devel] [PATCH 2/2] netifd, lldpd, rpcd,
 log: use generic service_running
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

Y29tbWl0IGViMjA0ZDE0Zjc1YyAoImJhc2UtZmlsZXM6IGltcGxlbWVudCBnZW5lcmljIHNlcnZp
Y2VfcnVubmluZyIpCmludHJvZHVjZWQgZ2VuZXJpYyBzZXJ2aWNlX3J1bm5pbmcgc28gaXQncyBu
b3QgbmVlZGVkIHRvIGNvcHkmcGFzdGUgc2FtZQozIGxpbmVzIG92ZXIgYW5kIG92ZXIgYWdhaW4u
CgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHBhY2th
Z2UvbmV0d29yay9jb25maWcvbmV0aWZkL2ZpbGVzL2V0Yy9pbml0LmQvbmV0d29yayB8IDUgLS0t
LS0KIHBhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9sbGRwZC9maWxlcy9sbGRwZC5pbml0ICAgICAg
ICB8IDQgLS0tLQogcGFja2FnZS9zeXN0ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQgICAgICAgICAg
ICAgICAgICAgIHwgNCAtLS0tCiBwYWNrYWdlL3N5c3RlbS91Ym94L2ZpbGVzL2xvZy5pbml0ICAg
ICAgICAgICAgICAgICAgICAgfCA0IC0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgMTcgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy9uZXRpZmQvZmlsZXMvZXRj
L2luaXQuZC9uZXR3b3JrIGIvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy9uZXRpZmQvZmlsZXMvZXRj
L2luaXQuZC9uZXR3b3JrCmluZGV4IDIzMjFhMzA5YTVjZS4uZGMyMDhjNGNlMGExIDEwMDc1NQot
LS0gYS9wYWNrYWdlL25ldHdvcmsvY29uZmlnL25ldGlmZC9maWxlcy9ldGMvaW5pdC5kL25ldHdv
cmsKKysrIGIvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy9uZXRpZmQvZmlsZXMvZXRjL2luaXQuZC9u
ZXR3b3JrCkBAIC00MCwxMSArNDAsNiBAQCBzdG9wX3NlcnZpY2UoKSB7CiAJc2xlZXAgMQogfQog
Ci1zZXJ2aWNlX3J1bm5pbmcoKSB7Ci0JdWJ1cyAtdCAzMCB3YWl0X2ZvciBuZXR3b3JrLmludGVy
ZmFjZQotCS9zYmluL3dpZmkgcmVsb2FkX2xlZ2FjeQotfQotCiB2YWxpZGF0ZV9hdG1fYnJpZGdl
X3NlY3Rpb24oKQogewogCXVjaV92YWxpZGF0ZV9zZWN0aW9uIG5ldHdvcmsgImF0bS1icmlkZ2Ui
ICIkezF9IiBcCmRpZmYgLS1naXQgYS9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvbGxkcGQvZmls
ZXMvbGxkcGQuaW5pdCBiL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9sbGRwZC9maWxlcy9sbGRw
ZC5pbml0CmluZGV4IGJjNDI5ZGU0ODRkMy4uOWZiM2E4MjU1OTk1IDEwMDY0NAotLS0gYS9wYWNr
YWdlL25ldHdvcmsvc2VydmljZXMvbGxkcGQvZmlsZXMvbGxkcGQuaW5pdAorKysgYi9wYWNrYWdl
L25ldHdvcmsvc2VydmljZXMvbGxkcGQvZmlsZXMvbGxkcGQuaW5pdApAQCAtOTYsMTAgKzk2LDYg
QEAgc3RhcnRfc2VydmljZSgpIHsKIAlwcm9jZF9jbG9zZV9pbnN0YW5jZQogfQogCi1zZXJ2aWNl
X3J1bm5pbmcoKSB7Ci0JcGdyZXAgLXggL3Vzci9zYmluL2xsZHBkICY+IC9kZXYvbnVsbAotfQot
CiByZWxvYWRfc2VydmljZSgpIHsKIAlydW5uaW5nIHx8IHJldHVybiAxCiAJJExMRFBDTEkgLXUg
JExMRFBTT0NLRVQgJj4gL2Rldi9udWxsIDw8LUVPRgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9zeXN0
ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQgYi9wYWNrYWdlL3N5c3RlbS9ycGNkL2ZpbGVzL3JwY2Qu
aW5pdAppbmRleCA3N2ViY2JlNmNiN2IuLjQ0NzEzM2M2N2E1YSAxMDA3NTUKLS0tIGEvcGFja2Fn
ZS9zeXN0ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQKKysrIGIvcGFja2FnZS9zeXN0ZW0vcnBjZC9m
aWxlcy9ycGNkLmluaXQKQEAgLTE4LDcgKzE4LDMgQEAgc3RhcnRfc2VydmljZSgpIHsKIHJlbG9h
ZF9zZXJ2aWNlKCkgewogCXByb2NkX3NlbmRfc2lnbmFsIHJwY2QKIH0KLQotc2VydmljZV9ydW5u
aW5nKCkgewotCXByb2NkX3J1bm5pbmcgcnBjZAotfQpkaWZmIC0tZ2l0IGEvcGFja2FnZS9zeXN0
ZW0vdWJveC9maWxlcy9sb2cuaW5pdCBiL3BhY2thZ2Uvc3lzdGVtL3Vib3gvZmlsZXMvbG9nLmlu
aXQKaW5kZXggYmE5YzEyNGM4YmE2Li4yNTBmODA1YjQ0MDYgMTAwNjQ0Ci0tLSBhL3BhY2thZ2Uv
c3lzdGVtL3Vib3gvZmlsZXMvbG9nLmluaXQKKysrIGIvcGFja2FnZS9zeXN0ZW0vdWJveC9maWxl
cy9sb2cuaW5pdApAQCAtOTYsNyArOTYsMyBAQCBzdGFydF9zZXJ2aWNlKCkKIAljb25maWdfZm9y
ZWFjaCB2YWxpZGF0ZV9sb2dfc2VjdGlvbiBzeXN0ZW0gc3RhcnRfc2VydmljZV9maWxlCiAJY29u
ZmlnX2ZvcmVhY2ggdmFsaWRhdGVfbG9nX3NlY3Rpb24gc3lzdGVtIHN0YXJ0X3NlcnZpY2VfcmVt
b3RlCiB9Ci0KLXNlcnZpY2VfcnVubmluZygpIHsKLQlwcm9jZF9ydW5uaW5nIGxvZwotfQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
