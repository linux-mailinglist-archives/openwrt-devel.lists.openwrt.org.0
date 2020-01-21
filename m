Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3D6143866
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 09:36:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l872MqZJgncfFHG7fQgplqZr2wWt6rd6FZdjRw/CtWk=; b=akIyyBDChctdaC
	VsdGFBHiQ1QsSCWrFzf2PW9DwfqEIepqV84y4gMkLT4EC5OyOuHw//u1TF/1G778RErykyvwUFI/r
	msIdNzMb6GW5xx8SR9liMc7HPwJYQdAZqgD1wc+V9drD/awAGjD6tqmsVkSfQTb+xBgkJ0Ih+PG12
	FzzXjA3rBX4oV6c+XyCrF5P3ej4MOjlBCF5HT+rlc0PeauuV7eIcEmlezL0Rum9t744PSea7IYnG+
	mdiZSxPtM/YLlJ58EI+70ChjeNhB2UUUsvFmKAPnlhWL7tKpQGJHUFXGZ6xxVJPVpgXTajHl/TSJ2
	tgAvVIiW0aQ3/ENvXRWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itp1S-0006tD-4m; Tue, 21 Jan 2020 08:36:30 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itp0y-0006hJ-Hb
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 08:36:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A56024CB1;
 Tue, 21 Jan 2020 09:35:58 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3b8e76d9;
 Tue, 21 Jan 2020 09:35:48 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 09:35:09 +0100
Message-Id: <20200121083509.24067-2-ynezz@true.cz>
In-Reply-To: <20200121083509.24067-1-ynezz@true.cz>
References: <20200121083509.24067-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_003600_736431_9C89A108 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH procd 2/2] state: fix reboot causing
 shutdown inside LXC container
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

RXhlY3V0aW5nIGByZWJvb3RgIGNvbW1hbmQgaW4gT3BlbldydCBzeXN0ZW0gcnVuaW5nIGluc2lk
ZSBMWEMgY29udGFpbmVyCnJlc3VsdHMgaW4gYSBzaHV0ZG93biBvZiB0aGUgY29udGFpbmVyIGlu
c3RlYWQgb2YgcmVib290aW5nIHRoZQpjb250YWluZXIuCgpUaGlzIGFwcGVhcnMgdG8gaGF2ZSBi
ZWVuIGNhdXNlZCBieSBjb21taXQgODMyMzY5MDc4ZDgxICgic3RhdGU6IGZpeApzaHV0ZG93biB3
aGVuIHJ1bm5pbmcgaW4gYSBjb250YWluZXIgKEZTIzI0MjUpIiksIHdoaWNoIGV4aXRzIHRoZSBw
aWQKZWlueiBpbnN0ZWFkIG9mIHRoZSByZWJvb3QoKS4KCldoaWxlIGF0IGl0LCByZWZhY3RvciB0
aGUgaGFsdGluZyBjb2RlIGludG8gc2VwYXJhdGUgZnVuY3Rpb24gdG8gc2hvcnRlbgp0aGUgc3dp
dGNoL2Nhc2UgYmxvY2sgYW5kIG1ha2UgaXQgY2xlYXJlciwgZGVjcmVhc2UgdGhlIGluZGVudGF0
aW9uCmxldmVsIGJ5IHJldmVyc2luZyB0aGUgY29udGFpbmVyIGlmIGNvbmRpdGlvbiwgcmVwbGFj
ZSBtYWdpYyAwIHdpdGgKRVhJVF9TVUNDRVNTIGNvbnN0YW50IGluIGV4aXQoKSBhbmQgbWFrZSBp
dCB3YWl0IDFzIGZvciByZWJvb3QgbWVzc2FnZQpkZWxpdmVyeSBpbiBib3RoIGNvbnRhaW5lci9o
b3N0IGNhc2VzIGFzIHdlbGwuCgpSZWY6IEZTIzI2NjYKQ2M6IFBhdWwgU3Bvb3JlbiA8bWFpbEBh
cGFyY2FyLm9yZz4KRml4ZXM6IDgzMjM2OTA3OGQ4MSAoInN0YXRlOiBmaXggc2h1dGRvd24gd2hl
biBydW5uaW5nIGluIGEgY29udGFpbmVyIChGUyMyNDI1KSIpClRlc3RlZC1ieTogQmFwdGlzdGUg
Sm9uZ2xleiA8bGVkZUBiaXRzb2ZuZXR3b3Jrcy5vcmc+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogc3RhdGUuYyB8IDUyICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBp
bnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zdGF0ZS5jIGIvc3Rh
dGUuYwppbmRleCA0NzM3ZDAxMjFhZDAuLmUxMTdlYTMwMmY5MyAxMDA2NDQKLS0tIGEvc3RhdGUu
YworKysgYi9zdGF0ZS5jCkBAIC05NCw2ICs5NCwzNCBAQCBzdGF0aWMgdm9pZCBzZXRfY29uc29s
ZSh2b2lkKQogCQlzZXRfc3RkaW8odHR5KTsKIH0KIAorc3RhdGljIHZvaWQgcGVyZm9ybV9oYWx0
KCkKK3sKKwlpZiAocmVib290X2V2ZW50ID09IFJCX1BPV0VSX09GRikKKwkJTE9HKCItIHBvd2Vy
IGRvd24gLVxuIik7CisJZWxzZQorCQlMT0coIi0gcmVib290IC1cbiIpOworCisJLyogQWxsb3cg
dGltZSBmb3IgbGFzdCBtZXNzYWdlIHRvIHJlYWNoIHNlcmlhbCBjb25zb2xlLCBldGMgKi8KKwlz
bGVlcCgxKTsKKworCWlmIChpc19jb250YWluZXIoKSkgeworCQlyZWJvb3QocmVib290X2V2ZW50
KTsKKwkJZXhpdChFWElUX1NVQ0NFU1MpOworCQlyZXR1cm47CisJfQorCisJLyogV2UgaGF2ZSB0
byBmb3JrIGhlcmUsIHNpbmNlIHRoZSBrZXJuZWwgY2FsbHMgZG9fZXhpdChFWElUX1NVQ0NFU1Mp
CisJICogaW4gbGludXgva2VybmVsL3N5cy5jLCB3aGljaCBjYW4gY2F1c2UgdGhlIG1hY2hpbmUg
dG8gcGFuaWMgd2hlbgorCSAqIHRoZSBpbml0IHByb2Nlc3MgZXhpdHMuLi4gKi8KKwlpZiAoIXZm
b3JrKCkpIHsgLyogY2hpbGQgKi8KKwkJcmVib290KHJlYm9vdF9ldmVudCk7CisJCV9leGl0KEVY
SVRfU1VDQ0VTUyk7CisJfQorCisJd2hpbGUgKDEpCisJCXNsZWVwKDEpOworfQorCiBzdGF0aWMg
dm9pZCBzdGF0ZV9lbnRlcih2b2lkKQogewogCWNoYXIgdWJ1c19jbWRbXSA9ICIvc2Jpbi91YnVz
ZCI7CkBAIC0xNTMsMjkgKzE4MSw5IEBAIHN0YXRpYyB2b2lkIHN0YXRlX2VudGVyKHZvaWQpCiAJ
CXN5bmMoKTsKIAkJc2xlZXAoMSk7CiAjaWZuZGVmIERJU0FCTEVfSU5JVAotCQlpZiAocmVib290
X2V2ZW50ID09IFJCX1BPV0VSX09GRikKLQkJCUxPRygiLSBwb3dlciBkb3duIC1cbiIpOwotCQll
bHNlCi0JCQlMT0coIi0gcmVib290IC1cbiIpOwotCi0JCWlmICghaXNfY29udGFpbmVyKCkpIHsK
LQkJCS8qIEFsbG93IHRpbWUgZm9yIGxhc3QgbWVzc2FnZSB0byByZWFjaCBzZXJpYWwgY29uc29s
ZSwgZXRjICovCi0JCQlzbGVlcCgxKTsKLQotCQkJLyogV2UgaGF2ZSB0byBmb3JrIGhlcmUsIHNp
bmNlIHRoZSBrZXJuZWwgY2FsbHMgZG9fZXhpdChFWElUX1NVQ0NFU1MpCi0JCQkgKiBpbiBsaW51
eC9rZXJuZWwvc3lzLmMsIHdoaWNoIGNhbiBjYXVzZSB0aGUgbWFjaGluZSB0byBwYW5pYyB3aGVu
Ci0JCQkgKiB0aGUgaW5pdCBwcm9jZXNzIGV4aXRzLi4uICovCi0JCQlpZiAoIXZmb3JrKCApKSB7
IC8qIGNoaWxkICovCi0JCQkJcmVib290KHJlYm9vdF9ldmVudCk7Ci0JCQkJX2V4aXQoRVhJVF9T
VUNDRVNTKTsKLQkJCX0KLQotCQkJd2hpbGUgKDEpCi0JCQkJc2xlZXAoMSk7Ci0JCX0gZWxzZQot
CQkJZXhpdCgwKTsKKwkJcGVyZm9ybV9oYWx0KCk7CiAjZWxzZQotCQlleGl0KDApOworCQlleGl0
KEVYSVRfU1VDQ0VTUyk7CiAjZW5kaWYKIAkJYnJlYWs7CiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
