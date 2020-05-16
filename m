Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8851D5DB4
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 03:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vP9MOtdWkE4UUwFqQ/OyQs2iiQqM9d2Ww4z4kpmReoQ=; b=bKvSQmggmSO0EsG9K3XI2lnKK
	eOgGSIwxhOo/hfPMKUi0exAQv24KA6O3m6bH5DqJxtBIcZhyrI/FzQFRLfxYKLxrYYeYfnmxIqVbm
	hhCHQ+77KiKcBfGIsnl38QZBUQaHIRO2LgZYNxY0wxEaPlByIAdC7VwLMB3YNeXqxjy4YFYssmPMG
	tk8gHCbUg+TIwEC5U8j0wZVAE3pvgpsTm0TT6+NVqFa2LCK5jZDykCyatZjdn7pY6jWLGOroQgaoX
	AJAOMit+2n3c4dZVKlWJBqKue0EUefK1hQ9iuf52JV9sENzqVjFFZP9NHKXqzJ9CEkZ6bNX+EeuHs
	jYV03SpIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZlnG-0007zy-0C; Sat, 16 May 2020 01:39:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZlnC-0007za-KQ
 for openwrt-devel@bombadil.infradead.org; Sat, 16 May 2020 01:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=VytgYue0aclfin/vXQ3oUW7lJ214SlvxFJTcuKQIu88=; b=orFa50TKapjAPvqiaanHMS2Ozo
 u0qWazp9cVZJeDzwdK/mY3je1H+NBz0+uCm/bsiixaaS7lANGlS07IyjtdxIY7iFldINiTCSWLWli
 4zTIBaSCSrMDfqhJZ4xGNjD64HVXi13c0GM2BrCEGDLe2YYo4o51HxKFZ2u6+3E5amGZkzHJkW9+B
 f752rIM45mrSOakIuJAtp2vCi+xlOOl9fX5Or02drDV1S4ybWAcxq8N3N7z9dRoKRoFeXONbuB1kq
 eTZUlIKVdutx2HljAw3/zA3ENZ2aSG+kY3n+ayr4/VnvXWmuYkvDG6Td5148Ljx4WGp4nXS44qFC8
 WeVWnvnQ==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZln0-00047G-Ki
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 01:39:04 +0000
X-Originating-IP: 107.72.99.93
Received: from [127.0.0.1] (unknown [107.72.99.93])
 (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 49C071C0004;
 Sat, 16 May 2020 01:38:12 +0000 (UTC)
Date: Sat, 16 May 2020 01:38:08 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Message-ID: <bd072f76-3f0b-4948-97df-ae8681e7dec9@localhost>
In-Reply-To: <d9a8cdcbfe046467dcb5e19e2bedcc773092333d.1589396871.git.mschiffer@universe-factory.net>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <d9a8cdcbfe046467dcb5e19e2bedcc773092333d.1589396871.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-Correlation-ID: <bd072f76-3f0b-4948-97df-ae8681e7dec9@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_023859_051975_8FADB9ED 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.197 listed in wl.mailspike.net]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] build: compress kernel debuginfo
 using zstd
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
Cc: openwrt-devel@lists.openwrt.org, mschiffer@universe-factory.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q291bGQgd2UgdXNlIHRoYXQgZm9yIHRoZSBTREsvSW1hZ2VCdWlsZGVyIGFzIHdlbGw/CgpCZXN0
LApQYXVsCgotLSAKCk1heSAxMywgMjAyMCA5OjIwOjM5IEFNIE1hdHRoaWFzIFNjaGlmZmVyIAo8
bXNjaGlmZmVyQHVuaXZlcnNlLWZhY3RvcnkubmV0PjoKPiB6c3RkIHdpdGggaXRzIGRlZmF1bHQg
c2V0dGluZ3MgKGNvbXByZXNzaW9uIGxldmVsIC0zKSBjb21wcmVzc2VzIGJldHRlcgo+IHRoYW4g
YnppcDIgLTkgKHdoaWNoIGlzIHRoZSBkZWZhdWx0IHNldHRpbmcpLCBhbmQgaXMgYW4gb3JkZXIg
b2YgCm1hZ25pdHVkZQo+IGZhc3Rlci4KPgo+IEkgbWFkZSB0aGUgZm9sbG93aW5nIG1lYXN1cmVt
ZW50cyBmb3IgdGhlIG1vc3QgY29tbW9uIGNvbXByZXNzaW9uIHRvb2xzCj4gKGFsbCBzdGFuZGFy
ZCBEZWJpYW4gQnVzdGVyIHZlcnNpb25zLCBkZWZhdWx0IGZsYWdzIHVubGVzcyBub3RlZAo+IG90
aGVyd2lzZSksIHVzaW5nIHRoZSBkZWJ1ZyBpbmZvcm1hdGlvbiBvZiBhIGxhcmdlIHg4Ni02NCBr
ZXJuZWwgd2l0aAo+IEFMTF9LTU9EUzoKPgo+ICoga2VybmVsLWRlYnVnLnRhcjogMzc2TQo+ICog
a2VybmVsLWRlYnVnLnRhci5nejogMTAxTSwgY29tcHJlc3NlZCBpbiB+MTJzCj4gKiBrZXJuZWwt
ZGVidWcudGFyLmJ6MjogOTFNLCBjb21wcmVzc2VkIGluIH4xNXMKPiAqIGtlcm5lbC1kZWJ1Zy50
YXIueHo6IDU3TSwgY29tcHJlc3NlZCBpbiB+MTAxcwo+ICoga2VybmVsLWRlYnVnLnRhci56c3Q6
IDg2TSwgY29tcHJlc3NlZCBpbiB+MXMKPgo+IFdpdGggenN0ZCwgdGhlcmUgaXMgc3RpbGwgc29t
ZSByb29tIGZvciBpbXByb3ZlbWVudCBieSBpbmNyZWFzaW5nIHRoZQo+IGNvbXByZXNzaW9uLCBi
dXQgdGhlIHNsaWdodCBpbmNyZWFzZSBpbiBjb21wcmVzc2lvbiByYXRpbwo+ICgyMi44MyUgLT4g
MTkuNDYlKSBkb2VzIG5vdCBqdXN0aWZ5IHRoZSBzaWduaWZpY2FudCBpbmNyZWFzZSBpbgo+IGNv
bXByZXNzaW9uIHRpbWUgKGFib3V0IDUgdGltZXMgb24gbXkgbWFjaGluZSkgaW4gbXkgb3Bpbmlv
bi4KPgo+IE5vdGUgdGhhdCBtdWx0aXRocmVhZGVkIGNvbXByZXNzaW9uICgtVCBhcmd1bWVudCkg
ZG9lcyBub3QgYWZmZWN0Cj4gcmVwcm9kdWNpYmlsaXR5IHdpdGggenN0ZC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IE1hdHRoaWFzIFNjaGlmZmVyIDxtc2NoaWZmZXJAdW5pdmVyc2UtZmFjdG9yeS5uZXQ+
Cj4gLS0tCj4gaW5jbHVkZS9rZXJuZWwtYnVpbGQubWsgfCAyICstCj4gdG9vbHMvTWFrZWZpbGXC
oMKgwqDCoMKgwqDCoMKgwqAgfCAxICsKPiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUva2VybmVsLWJ1aWxkLm1r
IGIvaW5jbHVkZS9rZXJuZWwtYnVpbGQubWsKPiBpbmRleCBjMzcxZTc4YWI5YjAuLjMyYzkxYTVi
ODM1OSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2tlcm5lbC1idWlsZC5tawo+ICsrKyBiL2luY2x1
ZGUva2VybmVsLWJ1aWxkLm1rCj4gQEAgLTcwLDcgKzcwLDcgQEAgaWZkZWYgQ09ORklHX0NPTExF
Q1RfS0VSTkVMX0RFQlVHCj4gJChGSU5EKSAkKEtFUk5FTF9CVUlMRF9ESVIpL2RlYnVnIC10eXBl
IGYgfCAkKFhBUkdTKSAKJChLRVJORUxfQ1JPU1Mpc3RyaXAgLS1vbmx5LWtlZXAtZGVidWcKPiAk
KFRBUikgYyAtQyAkKEtFUk5FTF9CVUlMRF9ESVIpIGRlYnVnIFwKPiAkKGlmICQoU09VUkNFX0RB
VEVfRVBPQ0gpLC0tbXRpbWU9IkAkKFNPVVJDRV9EQVRFX0VQT0NIKSIpIFwKPiAtwqDCoCB8IGJ6
aXAyIC1jIC05ID4gJChCSU5fRElSKS9rZXJuZWwtZGVidWcudGFyLmJ6Mgo+ICvCoMKgIHwgenN0
ZCAtVDAgLWYgLW8gJChCSU5fRElSKS9rZXJuZWwtZGVidWcudGFyLnpzdAo+IGVuZGVmCj4gZW5k
aWYKPgo+IGRpZmYgLS1naXQgYS90b29scy9NYWtlZmlsZSBiL3Rvb2xzL01ha2VmaWxlCj4gaW5k
ZXggMDI1NTZkNGI4M2YzLi4xNjlmMzZjNWJiNjkgMTAwNjQ0Cj4gLS0tIGEvdG9vbHMvTWFrZWZp
bGUKPiArKysgYi90b29scy9NYWtlZmlsZQo+IEBAIC0zNyw2ICszNyw3IEBAIHRvb2xzLXkgKz0g
bHptYSBzcXVhc2hmc2tpdDQgemlwCj4gdG9vbHMtJChCVUlMRF9CNDNfVE9PTFMpICs9IGI0My10
b29scwo+IHRvb2xzLSQoQlVJTERfSVNMKSArPSBpc2wKPiB0b29scy0kKENPTkZJR19VU0VfU1BB
UlNFKSArPSBzcGFyc2UKPiArdG9vbHMtJChDT05GSUdfQ09MTEVDVF9LRVJORUxfREVCVUcpICs9
IHpzdGQKPiB0b29scy0kKENPTkZJR19UQVJHRVRfYXBtODIxeHgpJChDT05GSUdfVEFSR0VUX2dl
bWluaSkgKz0gZ2VuZXh0MmZzCj4gdG9vbHMtJChDT05GSUdfVEFSR0VUX3RlZ3JhKSArPSBjYm9v
dGltYWdlIGNib290aW1hZ2UtY29uZmlncwo+Cj4gLS0KPiAyLjI2LjIKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
