Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D104C192386
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 09:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBBa8iBSi4Ctce7LbiCb5ivL/ZC8FsMuNNi5nZn/E28=; b=H5k1Qa54ts2ON5
	MH3jgFm7Yggklfvngj/KYzhLNgME/XQTwE0LzrHKFqqJAOxkpPGUw9LvixGKSAhGEQoEh7/6VQWyp
	B7EJOteAknG+v85AvUKfOwRR8dNd16IANHEjvlNzvW1Qf0tblszChp9btQJZX4PINcs+0Thv4xtSg
	571/AOBUHX9Z+dhcCRIk9qZMYinnMl/Jt64jhOCQkxyc7eX+kZ1IdKQN+HloiJzB+TCMC4vooJmg/
	chCU5sI0eoonhRn/57RFvANNL89EgwJxnMUKKQfbPWVfN389DSPnK/4eoTA41wUuLZKf34FwzRm/T
	qOoeDZ4/Ig8q4ovb66Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1sM-0002fS-DE; Wed, 25 Mar 2020 08:59:02 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1rn-0002Ou-62
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 08:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=an1CtVvQOx6EZIqPZxaSkjFAd5y/PIPZL6HsTRsqtdg=; b=RwvFUHUaf26rIiT4/z3p7S3S7H
 nWhB3lbkoMg2PwCvoAZVJMoVFEGwJP3B7TQPBIok4q9ogoK98sQdAxrEGIWktgmN3okhiQmL6bVoM
 Y/IaPA0a2P31UORAMiN458Lu518oPeMaDKGoc3bhF4TyaBUio+BF3x+honWqKNdab5FHMwZxFZZd4
 yn/JSsKMknCF/OR9FreAkLC0Q9Ito74aD440tW0ScHI92oHlu+AMuN0m/00WqmStAS2ZAf7WynN+b
 lSRay6SCS9lKPWfXkzrg5fBLEvcy/jkvo0bttctLNP43tbVk43GE8zyS1Jno07kjsUkkkY1McpoJG
 RjUbPdJg==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:56149
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1jH1rl-001cVd-4U; Wed, 25 Mar 2020 09:58:25 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20200325082706.GC43730@meh.true.cz>
Date: Wed, 25 Mar 2020 09:58:12 +0100
Message-Id: <A8BE0F44-5C40-43F9-A65A-E7AEEB2F72D2@oranjevos.nl>
References: <20200325082706.GC43730@meh.true.cz>
To: Rosen Penev <rosenp@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_015827_577792_7784498D 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix compilation with musl 1.2.0
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUm9zZW4gZS5hLgoKPiBPcCAyNSBtcnQuIDIwMjAsIG9tIDA5OjI3IGhlZWZ0IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+IGhldCB2b2xnZW5kZSBnZXNjaHJldmVuOgo+IAo+IFJvc2Vu
IFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAyMC0wMy0yNCAyMjo1NjoxOV06Cj4gCj4gSGks
Cj4gCj4+IC0tLSBhL3N5c3RlbS1saW51eC5jCj4+ICsrKyBiL3N5c3RlbS1saW51eC5jCj4+IEBA
IC01OSw2ICs1OSwxMCBAQAo+PiAjZGVmaW5lIElGQV9GTEFHUyAoSUZBX01VTFRJQ0FTVCArIDEp
Cj4+ICNlbmRpZgo+PiAKPj4gKyNpZm5kZWYgX19OUl9jbG9ja19nZXR0aW1lCj4+ICsjZGVmaW5l
IF9fTlJfY2xvY2tfZ2V0dGltZSBfX05SX2Nsb2NrX2dldHRpbWU2NAo+PiArI2VuZGlmCj4gCj4g
Y291bGQgeW91IGZpeCBpdCBieSByZW1vdmluZyB0aGF0IHByb2JhYmx5IG5vdyBvYnNvbGV0ZSB3
b3JrYXJvdW5kIGJ5Cj4gcmVwbGFjaW5nIHRoYXQgc3lzY2FsbCgpIHdpdGggZGlyZWN0IGNsb2Nr
X2dldHRpbWUoKT8gVGhhbmtzIQo+IApJbiBnZW5lcmFsLCBob3cgYXBwbGF1ZGFibGUgdGhlIGVm
Zm9ydCwgZm9yIHRoZSB3aG9sZSBzZXJpZXMgb2YgZml4ZXMgaGF2aW5nIHRvIGRvIHdpdGggaGFu
ZGxpbmcgY2hhbmdlcyB0aGF0IHRhY2tsZSAyMDM4LCBpdCB3b3VsZCBiZSBwcmVmZXJhYmxlIHRv
IGhhdmUgdGhvc2UgZ3JvdXBlZCB0b2dldGhlciAodW5kZXIgb25lIGNvdmVyIGxldHRlciA/KSBh
bmQgY29uc2lzdGluZyBvZiBmaXhpbmcgdGhlIGNhbGwgc2l0ZXMgaS5zLm8uIHRoZSBxdWljayBm
aXhlcyB3aXRoIGRlZmluZXMuCgpSZWdhcmRzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
