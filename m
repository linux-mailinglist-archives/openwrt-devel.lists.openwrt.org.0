Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2553A5BD44
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 15:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tfNAO4LwKdczW9iyXJZJTXRVIWajSeRtHS2xqFu3M3c=; b=pXs7RuNzem6g2Z/eL/wxD/eya
	1LiE80Yk8koXd9FEidtRTwPr0kxmemhCWY4w6wwburPgxwG+7sQeiYoUaDznJXxA/cCzoYg3vzByz
	VlfKtkxmj11+vlrY3rHmW2XML+TC7w+ZpBrWjzBLmtSuRC9BVCtaRkExgSoDE10fs1RrFc5uo3tTQ
	OCI2XXCZKIiDeN+Sl61V85U5nb1LBCnVWVQl3hgEZPYX+rJxCWXzLDbBXqqaZ6UaNASTS+0Qn1peB
	cbGeo7lqDbjMmjmqrNaXA1qGwpt3ArtgGbz+PK0Fp3Ls2bezCcGssbZI4Dsa3XCD2t0cgn7ovQ0Hi
	bIv+o16QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhwg0-0007VQ-8Y; Mon, 01 Jul 2019 13:49:00 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhwfp-0007Uv-HV
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 13:48:51 +0000
Received: from p5dcfb199.dip0.t-ipconnect.de ([93.207.177.153]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hhwfn-0005YW-Rp; Mon, 01 Jul 2019 15:48:47 +0200
To: Alban Bedel <albeu@free.fr>, openwrt-devel@lists.openwrt.org
References: <20190621153828.20699-1-albeu@free.fr>
From: John Crispin <john@phrozen.org>
Message-ID: <1b3378bc-3acb-04ef-f9c0-8b4ab158da85@phrozen.org>
Date: Mon, 1 Jul 2019 15:48:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190621153828.20699-1-albeu@free.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_064849_737345_09597A7F 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] runqueue: Fix the callbacks order in
 runqueue_task_kill()
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDIxLzA2LzIwMTkgMTc6MzgsIEFsYmFuIEJlZGVsIHdyb3RlOgo+IFNpbmNlIGNvbW1pdCAx
MWU4YWZlYSAocnVucXVldWUgc2hvdWxkIGNhbCB0aGUgY29tcGxldGUgaGFuZGxlciBmcm9tCj4g
bW9yZSBwbGFjZXMpIHRoZSBjYWxsIHRvIHRoZSBjb21wbGV0ZSgpIGNhbGxiYWNrIGhhcyBiZWVu
IG1vdmVkIHRvCj4gcnVucXVldWVfdGFza19jb21wbGV0ZSgpLiAgSG93ZXZlciBpbiBydW5xdWV1
ZV90YXNrX2tpbGwoKQo+IHJ1bnF1ZXVlX3Rhc2tfY29tcGxldGUoKSBpcyBjYWxsZWQgYmVmb3Jl
IHRoZSBraWxsKCkgY2FsbGJhY2suCj4gVGhpcyB3aWxsIHJlc3VsdCBpbiBhIHVzZSBhZnRlciBm
cmVlIGlmIHRoZSBjb21wbGV0ZSgpIGNhbGxiYWNrIGZyZWUKPiB0aGUgdGFzayBzdHJ1Y3QuCj4K
PiBGdXJ0aGVybW9yZSBydW5xdWV1ZV9zdGFydF9uZXh0KCkgaXMgYWxyZWFkeSBjYWxsZWQgYXQg
dGhlIGVuZCBvZgo+IHJ1bnF1ZXVlX3Rhc2tfY29tcGxldGUoKSwgc28gdGhlcmUgaXMgbm8gbmVl
ZCB0byBjYWxsIGl0IGFnYWluIGluCj4gcnVucXVldWVfdGFza19raWxsKCkuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBBbGJhbiBCZWRlbCA8YWxiZXVAZnJlZS5mcj4KPiAtLS0KPiAgIHJ1bnF1ZXVlLmMg
fCA0ICstLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9ydW5xdWV1ZS5jIGIvcnVucXVldWUuYwo+IGluZGV4IGExZDAx
MzMuLjRjNjIxYWEgMTAwNjQ0Cj4gLS0tIGEvcnVucXVldWUuYwo+ICsrKyBiL3J1bnF1ZXVlLmMK
PiBAQCAtMTk2LDExICsxOTYsOSBAQCB2b2lkIHJ1bnF1ZXVlX3Rhc2tfa2lsbChzdHJ1Y3QgcnVu
cXVldWVfdGFzayAqdCkKPiAgIAlpZiAoIXQtPnF1ZXVlZCkKPiAgIAkJcmV0dXJuOwo+ICAgCj4g
LQlydW5xdWV1ZV90YXNrX2NvbXBsZXRlKHQpOwo+ICAgCWlmIChydW5uaW5nICYmIHQtPnR5cGUt
PmtpbGwpCj4gICAJCXQtPnR5cGUtPmtpbGwocSwgdCk7Cj4gLQo+IC0JcnVucXVldWVfc3RhcnRf
bmV4dChxKTsKPiArCXJ1bnF1ZXVlX3Rhc2tfY29tcGxldGUodCk7Cj4gICB9Cj4gICAKPiAgIHZv
aWQgcnVucXVldWVfc3RvcChzdHJ1Y3QgcnVucXVldWUgKnEpCgpIaSwKCnJ1bnF1ZXVlX3Rhc2tf
Y29tcGxldGUoKSB3aWxsIGRlY3JlbWVudCBydW5uaW5nIHdoaWNoLCBpZiBjYWxsZWQgYWZ0ZXIg
dGhlIGtpbGwgY2xhdXNlIG1pZ2h0IG5vdCBldmVuIHRyaWdnZXIgdGhlIGtpbGwoKSBjYWxsLiBJ
IGFtIGFzc3VtaW5nIHlvdSBhcmUgcnVubmluZyBhIGN1c3RvbSBydW5xdWV1ZV90YXNrX3R5cGUg
PwoKIMKgSm9obgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
