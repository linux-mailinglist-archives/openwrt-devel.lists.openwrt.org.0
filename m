Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA44D1B0E3C
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNKo3mR8ZefFAzhpkWDfuddDkViGVgZ5dLdyJhnCpa8=; b=OCgXO4JYsJyepW
	54N/WZO3UItvGAw6HAeCvZd6ZOV0MeVbi25jbkFsGkUBs+ZDAirVF2ha6cKpGAGjUykntZVcbzd0T
	UHUOM4pvt4CPJY7mWpavyTPEA0BazL0kGvi9s+BvkIbY4E26xhXEIYAfjmzdEzEfE77B+Qr3EyHX9
	Jb2hZmt8gelxuAlG0m98pgT9abtHnqr3pVw8OEgj3kh3ilY2pj2pdIEB8JiIziAyVtrHMCzFXEB7+
	QgsMo9k4+YAy9y3l53Xh5h2EyKx/NnCnuWkNPPU32iXSi0VnivcSNY1ZEeBHdfKyttOqM3h4eXUk/
	L5n+avA6J0vW0jWytWEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXKk-0006TL-Lw; Mon, 20 Apr 2020 14:23:38 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXKd-0006S9-C2
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:23:33 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 34494600B1;
 Mon, 20 Apr 2020 16:23:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 34494600B1
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587392609; bh=G7DIjOCdbTWT+YBLhHuabIDI6OgYB1EfxtJUyqkOHTs=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=OfkuipLC/QBGNVTj9C5sxHbevReRLWq8xzYVQip4+EqLzGtKPWUPa7oNHdFcy27bG
 pIy2xYO/Lrdmxr0cqYcDXr01YMJxCSoxkNlwsPUL7D2w8RxIIyDzpXOJZ+LbrOJRo3
 ywiYXT7s8cQTevrVvOyRCsqllft9pXoXFWv7hTI8=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <019101d6171e$f0a9b5c0$d1fd2140$@adrianschmutzler.de>
Date: Mon, 20 Apr 2020 16:23:28 +0200
Message-Id: <820C8D5E-BB3B-42D4-AAFC-70F3EED9EEA0@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-13-hacks@slashdirt.org>
 <017701d6171d$f5c35d00$e14a1700$@adrianschmutzler.de>
 <019101d6171e$f0a9b5c0$d1fd2140$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072331_580296_8DE7AAFF 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2 12/14] package/base-files: add
 caldata_sysfsload_from_file()
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
Cc: openwrt-devel@lists.openwrt.org, koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgo+IExlIDIwIGF2ci4gMjAyMCDDoCAxNjoyMSwgPG1haWxAYWRyaWFuc2NobXV0emxlci5k
ZT4gPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gYSDDqWNyaXQgOgo+IAo+IEhpIGFnYWluLAo+
IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRldmVsIFtt
YWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXQo+PiBPbiBCZWhh
bGYgT2YgbWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlCj4+IFNlbnQ6IE1vbnRhZywgMjAuIEFwcmls
IDIwMjAgMTY6MTQKPj4gVG86ICdUaGliYXV0IFZBUsOITkUnIDxoYWNrc0BzbGFzaGRpcnQub3Jn
Pjsgb3BlbndydC0KPj4gZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gQ2M6IGtvZW4udmFuZGVw
dXR0ZUBuY2VudHJpYy5jb20KPj4gU3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0gg
djIgMTIvMTRdIHBhY2thZ2UvYmFzZS1maWxlczogYWRkCj4+IGNhbGRhdGFfc3lzZnNsb2FkX2Zy
b21fZmlsZSgpCj4+IAo+PiBIaSwKPj4gCj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
Pj4gRnJvbTogb3BlbndydC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0
cy5vcGVud3J0Lm9yZ10KPj4+IE9uIEJlaGFsZiBPZiBUaGliYXV0IFZBUsOITkUKPj4+IFNlbnQ6
IE1vbnRhZywgMjAuIEFwcmlsIDIwMjAgMTU6MzUKPj4+IFRvOiBvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCj4+PiBDYzogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3Jn
PjsKPj4ga29lbi52YW5kZXB1dHRlQG5jZW50cmljLmNvbQo+Pj4gU3ViamVjdDogW09wZW5XcnQt
RGV2ZWxdIFtQQVRDSCB2MiAxMi8xNF0gcGFja2FnZS9iYXNlLWZpbGVzOiBhZGQKPj4+IGNhbGRh
dGFfc3lzZnNsb2FkX2Zyb21fZmlsZSgpCj4+PiAKPj4+IFRoaXMgcm91dGluZSBlbmFibGVzIGxv
YWRpbmcgY2FsZGF0YSBiaW5hcnkgdmlhIHRoZSBrZXJuZWwgc3lzZnMKPj4+IGxvYWRlcgo+Pj4g
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBUaGliYXV0IFZBUsOITkUgPGhhY2tzQHNsYXNoZGlydC5vcmc+
Cj4+PiAtLS0KPj4+IHBhY2thZ2UvYmFzZS1maWxlcy9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMiArLQo+Pj4gcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMv
Y2FsZGF0YS5zaCB8IDE1Cj4+PiArKysrKysrKysrKysrKysKPj4+IDIgZmlsZXMgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlIGIvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlCj4+
PiBpbmRleAo+Pj4gZjFmMGYxN2E2MC4uZDhlN2MzMTg3OCAxMDA2NDQKPj4+IC0tLSBhL3BhY2th
Z2UvYmFzZS1maWxlcy9NYWtlZmlsZQo+Pj4gKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL01ha2Vm
aWxlCj4+PiBAQCAtMTIsNyArMTIsNyBAQCBpbmNsdWRlICQoSU5DTFVERV9ESVIpL3ZlcnNpb24u
bWsgIGluY2x1ZGUKPj4+ICQoSU5DTFVERV9ESVIpL2ZlZWRzLm1rCj4+PiAKPj4+IFBLR19OQU1F
Oj1iYXNlLWZpbGVzCj4+PiAtUEtHX1JFTEVBU0U6PTIxOQo+Pj4gK1BLR19SRUxFQVNFOj0yMjAK
Pj4+IFBLR19GTEFHUzo9bm9uc2hhcmVkCj4+PiAKPj4+IFBLR19GSUxFX0RFUEVORFM6PSQoUExB
VEZPUk1fRElSKS8KPj4+ICQoR0VORVJJQ19QTEFURk9STV9ESVIpL2Jhc2UtZmlsZXMvCj4+PiBk
aWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0
YS5zaAo+Pj4gYi9wYWNrYWdlL2Jhc2UtIGZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0
YS5zaAo+Pj4gaW5kZXggZTkzNDljN2VlZS4uYTY0ZjA3Nzc4ZCAxMDA2NDQKPj4+IC0tLSBhL3Bh
Y2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2gKPj4+ICsrKyBi
L3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2gKPj4+IEBA
IC02OCw2ICs2OCwyMSBAQCBjYWxkYXRhX2Zyb21fZmlsZSgpIHsKPj4+IAkJY2FsZGF0YV9kaWUg
ImZhaWxlZCB0byBleHRyYWN0IGNhbGlicmF0aW9uIGRhdGEgZnJvbSAkc291cmNlIgo+Pj4gfQo+
Pj4gCj4+PiArY2FsZGF0YV9zeXNmc2xvYWRfZnJvbV9maWxlKCkgewo+PiAKPj4gRGlkbid0IGdl
dCB0aGF0IGF0IGZpcnN0LiBNYXliZSBjaG9vc2Ugc29tZXRoaW5nIGxpa2UgY2FsZGF0YV9maWxl
X3RvX3N5c2ZzKCk/Cj4+IAo+Pj4gKwlsb2NhbCBzb3VyY2U9JDEKPj4+ICsJbG9jYWwgb2Zmc2V0
PSQoKCQyKSkKPj4+ICsJbG9jYWwgY291bnQ9JCgoJDMpKQo+Pj4gKwo+Pj4gKwkjIHRlc3QgZXh0
cmFjdCB0byAvZGV2L251bGwgZmlyc3QKPj4+ICsJZGQgaWY9JHNvdXJjZSBvZj0vZGV2L251bGwg
aWZsYWc9c2tpcF9ieXRlcyBicz0kY291bnQgc2tpcD0kb2Zmc2V0Cj4+PiBjb3VudD0xIDI+L2Rl
di9udWxsIHx8IFwKPj4+ICsJCWNhbGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxpYnJh
dGlvbiBkYXRhIGZyb20gJHNvdXJjZSIKPj4+ICsKPj4+ICsJIyBjYW4ndCBmYWlsIG5vdwo+Pj4g
KwllY2hvIDEgPiAvc3lzLyRERVZQQVRIL2xvYWRpbmcKPj4gCj4+IE1heWJlIG1ha2UgJERFVlBB
VEggb3IgL3N5cy8kREVWUEFUSCBhbiBhcmd1bWVudD8KPiAKPiBPbiBhIHNlY29uZCB0aG91Z2h0
OiBUaGF0J3Mgbm90IHNvIG11Y2ggZGlmZmVyZW50IGZyb20gaG93IHdlIGhhbmRsZSAvbGliL2Zp
cm13YXJlLyRGSVJNV0FSRSBpbiB0aGlzIGZpbGUuCj4gCj4gQ2FuIHlvdSBjb21tZW50IG9uIHdo
ZXRoZXIgdGhlIGltcGxlbWVudGF0aW9uIG9mIC9zeXMvJERFVlBBVEggd2lsbCBiZSBhcyBnZW5l
cmljIGFzIC9saWIvZmlybXdhcmUvJEZJUk1XQVJFPyAoVGhlbiB3ZSBjb3VsZCBrZWVwIGl0IHlv
dXIgd2F5KQo+IE9yIGlzIHRoaXMgZGVwZW5kZW50IG9uIHlvdXIgZHJpdmVyIGltcGxlbWVudGF0
aW9uLCBhbmQgdGh1cyBzcGVjaWZpYyB0byBtaWtyb3Rpaz8gVGhlbiwgd2UgY291bGQgc3RpbGwg
a2VlcCBpdCBpbiBiYXNlLWZpbGVzLCBidXQgc2hvdWxkIHJlZmxlY3QgdGhhdCBpbiB0aGUgZnVu
Y3Rpb24gbmFtZS4KClRoaXMgaXMgdXNpbmcgdGhlIHN0YW5kYXJkIGtlcm5lbCBmYWxsYmFjayBt
ZWNoYW5pc206Cmh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjQuMTkvZHJpdmVyLWFw
aS9maXJtd2FyZS9mYWxsYmFjay1tZWNoYW5pc21zLmh0bWwjZmlybXdhcmUta29iamVjdC11ZXZl
bnQtZmFsbGJhY2stbWVjaGFuaXNtCgokREVWUEFUSCBpcyBwcm92aWRlZCBieSB0aGUga2VybmVs
LCBhbmQgcmVmZXJzIHRvIHRoZSBzeXNmcyBwYXRoLgoKSFRICgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
