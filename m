Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D392A449
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 13:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fc6EaRjAt5cwKtAPmR4i1F6Z/Cr/irLK4H9Ebq+2x6w=; b=LW1ldCrw0dSvM6
	fLGXrOjCfdBb90c11RtnShKR+Ub/jPCKDr2bthhqn30tZmsvI6uvowEBe+asNpAJYLbCLaZLKvE8X
	29qVLZ18vr9UwbXOGYboOi+1e6QvOGFMjEA5AY7p+eYAwY5hW+oehba7X/WFgkccBtTlLGW1sisRP
	5PuTslLWOhJnvXjS1fnV3oM97u0V8OekkpUOUaKxzZ/eprWsirYO7aHd+xNONwU6MzZsRrbvmaz8X
	dhxDWVPUskR6Gy/jwauxKkarSp3TKSYEkt0Zwf1xXFk8BwocniMhRlLtcnkJhtOswRXOZVuWhDpo9
	bk24PZ9T7PZalhe8BJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUVKN-000303-AS; Sat, 25 May 2019 11:59:07 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUVKF-0002y3-S1
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 11:59:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C226A3A32;
 Sat, 25 May 2019 13:58:56 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 61cc407e;
 Sat, 25 May 2019 13:58:55 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 May 2019 13:58:37 +0200
Message-Id: <1558785521-31779-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558785521-31779-1-git-send-email-ynezz@true.cz>
References: <1558785521-31779-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_045900_062106_6E477D95 
X-CRM114-Status: UNSURE (   8.54  )
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
Subject: [OpenWrt-Devel] [PATCH 2/6] ramips: ethernet: remove unused
 SIOCETHTOOL ioctl handling
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
 John Crispin <john@phrozen.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBpb2N0bCBpcyBjdXJyZW50bHkgcm91dGVkIHRocm91Z2ggZ2VuZXJpYyBpbnRlcmZhY2Ug
Y29kZS4KCiAgZGV2X2lvY3RsCiAgICBkZXZfZXRodG9vbAogICAgICBfX2V0aHRvb2xfZ2V0X2xp
bmtfa3NldHRpbmdzCiAgICAgICAgcGh5X2V0aHRvb2xfaW9jdGwKCkNjOiBGZWxpeCBGaWV0a2F1
IDxuYmRAbmJkLm5hbWU+CkNjOiBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5vcmc+ClNpZ25l
ZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLi4uL2ZpbGVzLTQu
MTQvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyAgfCAxMyArLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9m
aWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKaW5k
ZXggMTBkOWZkN2EzZTY3Li5iMmMzZDMyYzU1NDkgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9y
YW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3Nv
Yy5jCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9ldGhl
cm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCkBAIC0xNDExLDE5ICsxNDExLDggQEAgc3RhdGlj
IGludCBmZV9kb19pb2N0bChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCBzdHJ1Y3QgaWZyZXEgKmlm
ciwgaW50IGNtZCkKIAlpZiAoIXByaXYtPnBoeV9kZXYpCiAJCXJldHVybiAtRU5PREVWOwogCi0J
c3dpdGNoIChjbWQpIHsKLQljYXNlIFNJT0NFVEhUT09MOgotCQlyZXR1cm4gcGh5X2V0aHRvb2xf
aW9jdGwocHJpdi0+cGh5X2RldiwKLQkJCQkodm9pZCAqKSBpZnItPmlmcl9kYXRhKTsKLQljYXNl
IFNJT0NHTUlJUEhZOgotCWNhc2UgU0lPQ0dNSUlSRUc6Ci0JY2FzZSBTSU9DU01JSVJFRzoKLQkJ
cmV0dXJuIHBoeV9taWlfaW9jdGwocHJpdi0+cGh5X2RldiwgaWZyLCBjbWQpOwotCWRlZmF1bHQ6
Ci0JCWJyZWFrOwotCX0KIAotCXJldHVybiAtRU9QTk9UU1VQUDsKKwlyZXR1cm4gcGh5X21paV9p
b2N0bChwcml2LT5waHlfZGV2LCBpZnIsIGNtZCk7CiB9CiAKIHN0YXRpYyBpbnQgZmVfY2hhbmdl
X210dShzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCBpbnQgbmV3X210dSkKLS0gCjEuOS4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
