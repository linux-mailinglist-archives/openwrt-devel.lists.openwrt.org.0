Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024BB760E0
	for <lists+openwrt-devel@lfdr.de>; Fri, 26 Jul 2019 10:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R9LHJKWu58jN7KpOEHzyRBNqndYvFlJDPCb/6jNov/M=; b=ZxFUVqlh3h93Fb/hltkSDaUxl
	0q23oQJjRBI1F1Nty//E8d5p4ns5pymhoQwtLMbP7EVIcfwuxjHHlLyYKY2pt8VZHHhebCblpThbL
	Y1MhOJyoiIcCvVVjkqtvVxcZfSqds2JU1ZI8pbMc5ybfj54siqaMoYZDk438M2Q1ovnMQe4dvA6mc
	SzBvO9rioCh0BuZGz5NxS65uiyo49ZT9uF7RF6MNBjtvd8TKuvCTHE+h7W7KaMwAR1JxkoT7uj1y0
	J/1co0ZLdh+9tBqSgxrmAwPqXYAcWricmItYxb8hLLh2cTFDOSxEgAgISZqw8qGQe5MIoMtqwt/WD
	uJl8btfqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqveX-0000eN-RT; Fri, 26 Jul 2019 08:32:37 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqveL-0000d0-Re
 for openwrt-devel@lists.openwrt.org; Fri, 26 Jul 2019 08:32:27 +0000
Received: from pd95fd1c2.dip0.t-ipconnect.de ([217.95.209.194]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hqveH-000872-DX; Fri, 26 Jul 2019 10:32:21 +0200
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>,
 "openwrt-devel@lists.openwrt.org >> OpenWrt Development List"
 <openwrt-devel@lists.openwrt.org>
References: <20190725154315.7777-1-zefir.kurtisi@neratec.com>
 <ab518b29-1b91-4002-dbf3-54eea50b429a@phrozen.org>
 <1b1b6c26-f46a-15ea-f925-82fbfd2d940b@neratec.com>
From: John Crispin <john@phrozen.org>
Message-ID: <de5fc6cc-326c-5aaf-f0d7-fd6b16dcaeaa@phrozen.org>
Date: Fri, 26 Jul 2019 10:32:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1b1b6c26-f46a-15ea-f925-82fbfd2d940b@neratec.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_013226_052592_AD319EF6 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] logread: add option to filter for
 facilities
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

Ck9uIDI2LzA3LzIwMTkgMDk6NTcsIFplZmlyIEt1cnRpc2kgd3JvdGU6Cj4gT24gNy8yNS8xOSA1
OjU4IFBNLCBKb2huIENyaXNwaW4gd3JvdGU6Cj4+IE9uIDI1LzA3LzIwMTkgMTc6NDMsIFplZmly
IEt1cnRpc2kgd3JvdGU6Cj4+PiBUaGlzIGFkZHMgZmlsdGVyaW5nIG9wdGlvbnMgZm9yIGZhY2ls
aXRpZXMgYXMgZm9sbG93czoKPj4+ICDCoMKgwqDCoCAtesKgwqDCoCA8ZmFjaWxpdHk+wqDCoMKg
IGhhbmRsZSBvbmx5IG1lc3NhZ2VzIHdpdGggZ2l2ZW4gZmFjaWxpdHkgKDAtMjMpLAo+Pj4gcmVw
ZWF0YWJsZQo+Pj4gIMKgwqDCoMKgIC1awqDCoMKgIDxmYWNpbGl0eT7CoMKgwqAgaWdub3JlIG1l
c3NhZ2VzIHdpdGggZ2l2ZW4gZmFjaWxpdHkgKDAtMjMpLCByZXBlYXRhYmxlCj4+Pgo+Pj4gV2l0
aCB0aGF0Cj4+PiAqICdsb2dyZWFkIC16IDIgLXogMTYnIHdpbGwgZGlzcGxheSBhbGwgTUFJTCBh
bmQgTE9DQUwwIG1lc3NhZ2VzLCB3aGlsZQo+Pj4gKiAnbG9ncmVhZCAtWiAyIC1aIDE2JyB3aWxs
IGRpc3BsYXkgYWxsIGJ1dCBNQUlMIGFuZCBMT0NBTDAgbWVzc2FnZXMKPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBaZWZpciBLdXJ0aXNpIDx6ZWZpci5rdXJ0aXNpQG5lcmF0ZWMuY29tPgo+Pj4gLS0t
Cj4+PiAgwqAgbG9nL2xvZ3JlYWQuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
Cj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2xvZy9sb2dyZWFkLmMgYi9sb2cvbG9ncmVhZC5jCj4+PiBp
bmRleCBlNDc1NDFhLi5hNzY0NzQyIDEwMDY0NAo+Pj4gLS0tIGEvbG9nL2xvZ3JlYWQuYwo+Pj4g
KysrIGIvbG9nL2xvZ3JlYWQuYwo+Pj4gQEAgLTY2LDYgKzY2LDE4IEBAIHN0YXRpYyBpbnQgbG9n
X3R5cGUgPSBMT0dfU1RET1VUOwo+Pj4gIMKgIHN0YXRpYyBpbnQgbG9nX3NpemUsIGxvZ191ZHAs
IGxvZ19mb2xsb3csIGxvZ190cmFpbGVyX251bGwgPSAwOwo+Pj4gIMKgIHN0YXRpYyBpbnQgbG9n
X3RpbWVzdGFtcDsKPj4+ICDCoCBzdGF0aWMgaW50IGxvZ2RfY29ubl90cmllcyA9IExPR0RfQ09O
TkVDVF9SRVRSWTsKPj4+ICtzdGF0aWMgaW50IGZhY2lsaXR5X2luY2x1ZGU7Cj4+PiArc3RhdGlj
IGludCBmYWNpbGl0eV9leGNsdWRlOwo+Pj4gKwo+Pj4gKy8qIGNoZWNrIGZvciBmYWNpbGl0eSBm
aWx0ZXI7IHJldHVybiAwIGlmIG1lc3NhZ2Ugc2hhbGwgYmUgZHJvcHBlZCAqLwo+Pj4gK3N0YXRp
YyBpbnQgY2hlY2tfZmFjaWxpdHlfZmlsdGVyKGludCBmKQo+Pj4gK3sKPj4+ICvCoMKgwqAgaWYg
KGZhY2lsaXR5X2luY2x1ZGUpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICEhKGZhY2lsaXR5
X2luY2x1ZGUgJiAoMSA8PCBmKSk7Cj4+PiArwqDCoMKgIGlmIChmYWNpbGl0eV9leGNsdWRlKQo+
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAhKGZhY2lsaXR5X2V4Y2x1ZGUgJiAoMSA8PCBmKSk7
Cj4+PiArwqDCoMKgIHJldHVybiAxOwo+Pj4gK30KPj4gY29ycmVjdCBtZSBpZiBJIGFtIHdyb25n
IGJ1dCBieSBkZWZhdWx0IGFsbCBmYWNpbGl0aWVzIHdpbGwgYmUgaW5jbHVkZWQgc28gdGhlIC16
Cj4+IGlzIGEgbm9vcCB1bmxlc3Mgd2UgYWRkIGEKPj4KPj4gaWYgKGZhY2lsaXR5X2luY2x1ZGUp
Cj4+Cj4+ICDCoMKgwqAgcmV0cnVuIDAKPj4KPj4gYXQgdGhlIGVuZCBvZiB0aGlzIGZ1bmN0aW9u
ID8hCj4+Cj4+ICDCoMKgwqAgSm9obgo+Pgo+Pgo+IEhpIEpvaG4sCj4KPiBpZiB5b3UgcGljayBh
dCBsZWFzdCBvbmUgZmFjaWxpdHkgdG8gaW5jbHVkZSwgeW91IGdldCBpbnRvIHRoZSB0b3Btb3N0
Cj4gJ2lmIChmYWNpbGl0eV9pbmNsdWRlKScgYnJhbmNoIG9mIHRoZSBmdW5jdGlvbiBhbmQgcmV0
dXJuIGltbWVkaWF0ZWx5LiBZb3UgZ2V0IHRvCj4gdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24gb25s
eSBpZiBib3RoIChpbmNsdWRlIGFuZCBleGNsdWRlKSBhcmUgMC4KPgo+IFRoaXMgaW1wbGllcyB0
aGF0IGluY2x1ZGluZyBmYWNpbGl0aWVzIGhhcyBwcmVjZWRlbmNlIG92ZXIgZXhjbHVkaW5nIHRo
ZW0sIHdoaWNoCj4gaXMgaXJyZWxldmFudCBzaW5jZSBpdCBkb2VzIG5vdCBtYWtlIHNlbnNlIHRv
IHVzZSBpbmNsdWRlIGFuZCBleGNsdWRlIGF0IHRoZSBzYW1lCj4gdGltZS4KPgo+IENoZWVycywK
PiBaZWZpcgoKYXBwYXJlbnRseSBJIHdhcyBibGluZAoKIMKgwqDCoCBKb2huCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
