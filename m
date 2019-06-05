Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAEC35D62
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 14:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+4vskcNGAaRAG9WpCSBaI4pbWU5nLFdbDIhvNmOVkGo=; b=aQZw6Tw6owMmjyOnFjtu30n7R
	SRAwgc0HFpU5pIJLB2fqOuzipA/1dUyArEBZt6QBrAOF5VzgvbwphCzgFzS9FwRqFyvQ5hvwwfcOG
	856zyI75WioNfgDmiOWvMjgoOhHgR1NruzIhYoYD0U+JJxD1lwM7yq4f24oNFRQgueMioa0pjX+ZI
	XSdp3PL8UYdX5NbcYXDWry/HI89p+EO0zMgib7t+zG1rEg9SLBWAngmp1OgJEPZKvJGhdsr7BmZAz
	jRIzePqG5XRgDLUJTufndDhuDRCBKWet5cH2q48EkeZtY3+xEXJ5AYF9RrnCol0puswQ3pv6TCiDC
	Xzo+Z1Rgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVUm-0003cP-Kf; Wed, 05 Jun 2019 12:58:24 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVUd-0003be-V7
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 12:58:17 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYVUc-0004vJ-D7; Wed, 05 Jun 2019 14:58:14 +0200
To: Jonas Gorski <jonas.gorski@gmail.com>
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
 <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
 <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <522982e7-b056-a798-022f-a58155ad99bf@phrozen.org>
Date: Wed, 5 Jun 2019 14:58:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_055816_155359_685EDD59 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Karl Palsson <karlp@tweak.net.au>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA1LzA2LzIwMTkgMTQ6NTQsIEpvbmFzIEdvcnNraSB3cm90ZToKPiBIaSwKPgo+IE9uIFdl
ZCwgNSBKdW4gMjAxOSBhdCAxNDozMywgSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3
cm90ZToKPj4KPj4gT24gMDUvMDYvMjAxOSAxMzozNSwgS2FybCBQYWxzc29uIHdyb3RlOgo+Pj4g
Sm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToKPj4+PiBPbiAwNS8wNi8yMDE5
IDEyOjE3LCBLYXJsIFBhbHNzb24gd3JvdGU6Cj4+Pj4+IEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJv
emVuLm9yZz4gd3JvdGU6Cj4+Pj4+PiBUaGlzIGNhbiBiZSB1c2VkIGluc2lkZSBidWlsZCBzZXR1
cHMgZm9yIGVhc3kgZmVlZHMuY29uZgo+Pj4+Pj4gZ2VuZXJhdGlvbi4KPj4+Pj4gQ291bGQgeW91
IGdpdmUgdXMgYW4gZXhhbXBsZSBvZiBob3cgdGhpcyBpcyBhY3R1YWxseSBlYXN5LCBvcgo+Pj4+
PiB3aGF0IHNvcnQgb2YgZnVuY3Rpb25hbGl0eSB0aGlzIGlzIHByb3ZpZGluZyBiZXlvbmQgImNh
dAo+Pj4+PiBmZWVkcy5jb25mLmRlZmF1bHQgZmVlZHMuY29uZi5leHRyYSA+IGZlZWRzLmNvbmYi
Cj4+Pj4+Cj4+Pj4+IEl0IHNlZW1zIGxpa2UgYSBsb3Qgb2YgcGVybCBmb3IgYSBuYXJyb3cgdXNl
Y2FzZS4KPj4+Pj4KPj4+Pj4gU2luY2VyZWx5LAo+Pj4+PiBLYXJsIFBhbHNzb24KPj4+PiBUaGlz
IHdhcyBicm91Z2h0IHVwIGFzIGEgbWlzc2luZyBmZWF0dXJlIGJ5IHRoZSBwcnBsIGZvbGtzLiBJ
Cj4+Pj4gY29uc2lkZXJlZCBvbiBob3cgdG8gYmVzdCBpbXBsZW1lbnQgdGhpcyBhbmQgZmluZCB0
aGF0IGhhdmluZwo+Pj4+IHByb3BlciB0b29saW5nIGlzIG11Y2ggYmV0dGVyIHRoYW4gaGF2aW5n
IHRvIGNhcnJ5IGFyb3VuZCBhbgo+Pj4+IGV4dHJhIGZpbGUgdGhhdCBpcyBjYXQuIGJlaW5nIGFi
bGUgdG8gYnVpbGQgdGhlIGZlZWRzLmNvbmYKPj4+PiBkeW5hbWljYWxseSBsaWtlIHRoaXMganVz
dCBzZWVtcyBtdWNoIGNsZWFuZXIgdG8gbWUgYW5kIHdpbGwKPj4+PiBhbGxvdyBkb3duc3RyZWFt
IHVzZXJzLCB2ZW5kb3JzLCBvZG1zIGFuZCBpbnRlZ3JhdG9ycyB0byBoYXZlCj4+Pj4gbGVzcyBu
ZWVkIHRvIHBhdGNoIHRoZWlyIHRyZWVzIHRvIGRlYXRoLgo+Pj4gU28sIHRoZXkgc3RpbGwgaGF2
ZSB0byBoYXZlIGEgc2NyaXB0LCBidXQgbm93IHRoZSBzY3JpcHQgaGFzLi4uCj4+Pgo+Pj4KPj4+
IC4uLgo+Pj4gLi9zY3JpcHRzL2ZlZWRzIHNldHVwIC1iIHNyYy1naXQscHJpdmF0ZS1hYSxnaXQ6
Ly9ibGFoCj4+PiBzcmMtbGluayxwcml2YXRlLWJiLC93b3AvYmxhaAo+Pj4gLi4uCj4+Pgo+Pj4g
aW5zdGVhZCBvZgo+Pj4gLi4uCj4+PiBjcCBmZWVkcy5jb25mLmRlZmF1bHQgZmVlZHMuY29uZgo+
Pj4gZWNobyAic3JjLWdpdCBwcml2YXRlLWFhIGdpdDovL2JsYWgiID4+IGZlZWRzLmNvbmYKPj4+
IGVjaG8gInNyYy1saW5rIHByaXZhdGUtYmIgL3dvcC9ibGFoIiA+PiBmZWVkcy5jb25mCj4+PiAu
Li4KPj4+Cj4+PiBJIG1lYW4sIF95ZXNfIGl0J3MgInNpbXBsZXIiIGJ1dCBpdCdzIG9ubHkgc2lt
cGxlciBieSBicmluZ2luZyBpbgo+Pj4gbmV3IHRvb2xzIHdpdGggbmV3IGxheWVycyBvZiBhYnN0
cmFjdGlvbi4gSSByZWFsbHkgcXVlc3Rpb24KPj4+IHdoZXRoZXIgdGhhdCdzIGFjdHVhbGx5IHNp
bXBsZXIgZm9yIGFueW9uZSBpbiB0aGUgbG9uZyBydW4sIGFuZAo+Pj4gYWxzbyBob3cgdGhpcyBy
ZWFsbHkgY291bnRzIGFzIGEgIm1pc3NpbmcgZmVhdHVyZSIgVGhlcmUncyBzdGlsbAo+Pj4gZ29p
bmcgdG8gYmUgYSByZXF1aXJlbWVudCBmb3IgdGhhdCB2ZW5kb3Igc2NyaXB0Lgo+Pj4KPj4+IFNp
bmNlcmVseSwKPj4+IEthcmwgUGFsc3Nvbgo+PiBJdHMgbm90IGEgbmV3IHRvb2wsIGl0cyBhbiBl
eHRyYSBjYWxsIHRvIGFuIGFscmVhZHkgZXhpc3Rpbmcgb25lLiBJCj4+IGJlbGlldmUgdGhhdCB0
aGUgb25lIGxpbmVyIGlzIG11Y2ggY2xlYW5lciB0aGFuIHRoZSAzIGxpbmUgc2NyaXB0YWdlLgo+
PiB0aGVyZSBpcyBubyByZXF1aXJlbWVudCBmb3IgYSB2ZW5kb3Igc2NyaXB0LiB0aGV5IHNoaXAg
d2l0aCBhIFBERiB0aGF0Cj4+IGhhcyB0aGUgYnVpbGQgc3RlcHMuIFRoaXMgb25lbGluZSB3aWxs
IGJlIG11Y2ggZWFzaWVyIHRvIHVzZSBJIGJlbGlldmUuCj4gU2luY2UgdGhlIHVzZSBjYXNlIGlz
IGhhdmluZyBhZGRpdGlvbmFsIGN1c3RvbSBmZWVkcyB0byB0aGUgbm9ybWFsCj4gcGFja2FnZSBm
ZWVkcywgbWF5YmUgaXQgd291bGQgbWFrZSBtb3JlIHNlbnNlIHRvIGhhdmUgYSBlLmcuCj4gZmVl
ZHMuY29uZi5jdXN0b20gdGhhdCBpcyB1c2VkIGFzIGFuIGFkZGl0aW9uIHRvIHRoZQo+IGZlZWRz
LmNvbmYuZGVmYXVsdCBpbnN0ZWFkIG9mIGNvbXBsZXRlbHkgcmVwbGFjaW5nIGl0LiBUaGF0IHdh
eSB5b3UKPiB3b3VsZCBhdm9pZCBtaXNzaW5nIHVwc3RyZWFtIGNoYW5nZXMgaW4gdGhlIGZlZWRz
LmNvbmYuZGVmYXVsdCB3aGVuCj4gdXBkYXRpbmcgeW91ciBidWlsZCBlbnZpcm9ubWVudC4KCkhp
LAoKVGhlIHBhdGNoIGRvZXMgbm90IG1hbmlwdWxhdGUgdGhlIGRlZmF1bHQgZmlsZSBhdCBhbGwu
CgoKPgo+IFRoZW4gd2UgY291bGQgYWRkIGEgZmV3IGNvbW1hbmRzIHRvIHNjcmlwdHMvZmVlZHMg
Zm9yIG1hbmlwdWxhdGluZwo+IHRoYXQgZmVlZHMuY29uZi5jdXN0b20gKGFkZGluZy9yZW1vdmlu
ZyBmZWVkcywgY2hhbmdpbmcgdGhlaXIKPiB0eXBlcy9hZGRyZXNzZXMvbmFtZXMgZXRjKS4Kc28g
aW5zdGVhZCBvZiB1c2luZyBzY3JpcHQvY29tbWFuZHMgdG8gY3JlYXRlIHRoZSBhbHJlYWR5IGV4
aXN0aW5nIApmZWVkcy5jb25mIGZpbGUgd2Ugc2hvdWxkIGludHJvZHVjZSBhIDNyZCBmaWxlID8g
dGhhdCBtYWtlcyBubyBzZW5zZSB0byBtZS4KPiBXZSBzaG91bGQgYWxzbyBzYW5pdHkgY2hlY2sg
dGhlIGFyZ3VtZW50cywgYXMgSUlSQyBkYXNoZXMgYXJlIGFjdHVhbGx5Cj4gbm90IGFsbG93ZWQg
aW4gZmVlZCBuYW1lcyA7UAoKZ29vZGQgY2F0Y2gsIEknbGwgYWRkIHRoYXQgdG8gdGhlIHBhdGNo
CgogwqDCoMKgIEpvaG4KCgo+Cj4gUmVnYXJkcwo+IEpvbmFzCj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
