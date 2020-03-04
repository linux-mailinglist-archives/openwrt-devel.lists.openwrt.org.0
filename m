Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD98A1788E1
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 04:02:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NGetvd2/djr8aL1wjQ42DGYple/NWeo1EEKq+JM6vxU=; b=kIWfVebVmk9AzVuf4a0kNtPaZ
	6qo5GrAq7RViPgphVeAuZObZLmoWjtn7YR1Iwv/O78EuGVLU33z+zTujlRRsMFbdswXNxYlf3rlbE
	lHYuJwfg1ailjkIMzAXBE98uYkZULTryo3+i2GlCfxAZkwAbqmJ+m8KYivXPs4LBodbaVWtESG0dc
	45xwdfm1H/HHTnXU0WNWBrkh0j7/M6nAwrr17sxFjiyc/1W4+f7N2f+/W60YQB8inDiAzS/45RJzJ
	rG74T4Iy+ZCA8tndrkTWzQ7gys6v7W3uNKlY0ygRv4Rf8/pGlI5RzQROuL9zLn9s07G6N85F4Xf8r
	Ey7WSGQdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9KIm-00078B-Hl; Wed, 04 Mar 2020 03:02:28 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9KIf-00076Z-Ec
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 03:02:23 +0000
Received: from [192.168.22.124] (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 92BE6240003;
 Wed,  4 Mar 2020 03:02:10 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20200301024850.1528027-1-mail@aparcar.org>
 <20200301123433.GD33354@meh.true.cz>
 <ccac7a1c-7d58-c206-3402-b233d5309a1a@aparcar.org>
 <20200302110544.GD70913@meh.true.cz>
 <4d9299e0-f28e-aaf8-9b07-06325826b311@aparcar.org>
 <20200303091209.GA94262@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <243d1d5c-cae7-a70f-fd8c-6d494e65d123@aparcar.org>
Date: Tue, 3 Mar 2020 17:02:07 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303091209.GA94262@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_190221_622055_C5F5E5AD 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: refactor JSON info files to
 `profiles.json`
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCk9uIDAyLjAzLjIwIDIzOjEyLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IFBhdWwg
U3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4gWzIwMjAtMDMtMDIgMTY6MTk6MDVdOgo+Cj4+IC3C
oCAuSUdOT1JFOiAkKEJJTl9ESVIpLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSkKPj4KPj4g
Wy4uLl0KPj4KPj4gIMKgwqAgJChCSU5fRElSKS8kKGNhbGwgSU1BR0VfTkFNRSwkKDEpLCQoMikp
OiAkKEtESVIpL3RtcC8kKGNhbGwKPj4gSU1BR0VfTkFNRSwkKDEpLCQoMikpCj4+IC3CoMKgwqDC
oMKgwqAgY3AgJCReICQkQAo+PiArwqDCoMKgwqDCoMKgIC1jcCAkJF4gJCRACj4+Cj4+IFRoZSBw
cmVmaXhlZCBkYXNoIGlnbm9yZXMgYSBmYWlsdXJlLgo+IFRoaXMgY2hhbmdlIHNlZW1zIGxpa2Ug
YSBiYW5kLWFpZCBhcyBJIHJlYWxseSBkb24ndCBzZWUgYSByZWFzb24gdG8gdG91Y2ggdGhlCj4g
ZXhpc3RpbmcgY29kZSBqdXN0IGJlY2F1c2UgeW91J3ZlIHB1dCB0aGUgSlNPTiBnZW5lcmF0aW9u
IGluIHRoYXQgcGxhY2UKPiBpbml0aWFsbHkuCgpIb3cgYWJvdXQgSSBjcmVhdGUgYW4gaW5kZXBl
bmRlbnQgcGF0Y2ggbGlrZSB0aGUgZm9sbG93aW5nPwoKWyAtZiAkJF4gXSAmJiBjcCAkJF4gJCRA
IHx8IHRydWUKCkl0IHNlZW1zIHRvIGJlIGJhZCBzdHlsZSBpZ25vcmluZyBjcCBlcnJvcnMsIHdo
YXQgaWYgdGhlIGRlc3RpbmF0aW9uIGlzIApubyBsb25nZXIgd3JpdGFibGUgb3Igc3RvcmFnZSBm
dWxsPyBUaGlzIHdheSB3ZSBjYW4gcmVtb3ZlIHRoZSAuSUdOT1JFLgoKPiBJIHdvdWxkIHByb2Jh
Ymx5IHRyeSB0byBtYWtlIHRoYXQgSlNPTiBmaWxlIE1ha2UgdGFyZ2V0LCBzb21ldGhpbmcgbGlr
ZToKPgo+ICAgJChKSlNPTl9GSUxFTkFNRSk6IHdoYXRldmVyLXByZXJlcXVpc2l0ZXMtdGhhdC1q
c29uLW5lZWRzCj4gICAJanNvbi1nZW5lcmF0b3IucHkgPiAkJEAKPgo+IFRoZW4gYWRkIHRoaXMg
dGFyZ2V0IGFzIHByZXJlcXVpc2l0ZSB0byBhbm90aGVyIE1ha2UgdGFyZ2V0LCBpZGVhbGx5IG9u
ZSB3aGljaAo+IHNob3VsZCBwcm9kdWNlIHNvbWUgb3V0cHV0LCBub3QgaWdub3JpbmcgdGhlIGVy
cm9ycy4gSWYgdGhhdHMgbm90IHBvc3NpYmxlIEkKPiB3b3VsZCBwcm9iYWJseSBjaGFuZ2UgdGhl
IHRhcmdldC9wcmVyZXF1aXNpdGVzIGRlcGVuZGVuY3kgc29tZWhvdyBldGMuCgpJIHRyaWVkIHRo
YXQsIGJ1dCBjb3VsZG4ndCBmaWd1cmUgb3V0IHRoZSBwcmVyZXF1aXNpdGUgcGFydC4gSSBsb3N0
IGhvcGUgCmZvciBub3cgZ29pbmcgdGhpcyBwYXRoLCBJIGtpbmRseSBhc2sgeW91IHRvIGhlbHAg
bWUgaWYgeW91IHNheSB0aGlzIGlzIAp0aGUgb25seSBjbGVhbiB3YXkuCgpBcyBJIHNlZSBwYXJh
bGxlbCBmaWxlIHdyaXRlcyBhcyB0aGUgY29yZSBwcm9ibGVtIEkgc3BsaXQgdXAgdGhlIAp0ZW1w
b3JhcnkgSlNPTiBmaWxlcyB0byBhIGltYWdlIGluc3RlYWQgb2YgcHJvZmlsZSBiYXNlLiBUaGlz
IG1lYW5zIApzeXN1cGdyYWRlIGFuZCBmYWN0b3J5IGltYWdlcyBjYW4gYmUgY3JlYXRlZCBpbiBw
YXJhbGxlbCBiZWNhdXNlIHR3byAKaW5kZXBlbmRlbnQgSlNPTiBmaWxlcyBhcmUgY3JlYXRlZC4g
VGhlIHByZXZpb3VzIGFwcHJvYWNoIHdvdWxkICJleHRlbmQiIAphbiBleGlzdGluZyBmaWxlIHdo
aWNoIGlzIHByb25lIHRvIHBhcmFsbGVsIGZpbGUgd3JpdGluZyB0cm91YmxlLgoKPj4gSW4gc2Ny
aXB0cy9qc29uX2FkZF9pbWFnZV9pbmZvLnB5Cj4+Cj4+ICtpbWFnZV9maWxlID0gYmluX2RpciAv
IGdldGVudigiSU1BR0VfTkFNRSIpCj4+ICtpZiBub3QgaW1hZ2VfZmlsZS5pc19maWxlKCk6Cj4+
ICvCoMKgwqAgcHJpbnQoIlNraXAgSlNPTiBjcmVhdGlvbiBmb3Igbm9uIGV4aXN0aW5nIGltYWdl
ICIsIGltYWdlX2ZpbGUpCj4+ICvCoMKgwqAgcXVpdCgpCj4+Cj4+IFRoaXMgd2F5IHRoZSBQeXRo
b24gc2NyaXB0cyBkZXRlY3RzIGFuIGltYWdlIHdhc24ndCBjb3BpZWQgYW5kIHF1aXRzLgo+IEFu
b3RoZXIgYmFuZC1haWQsIGJ1dCBJIHVuZGVyc3RhbmQsIHRoYXQgZml4aW5nIHRoYXQgcHJvcGVy
bHkgd291bGQgYmUgYSBodWdlCj4gdGFzay4gSSB0aGluaywgdGhhdCB0aGUgLklHTk9SRSBpcyB0
aGVyZSB0byB3b3JrYXJvdW5kIHRoZSBhYnVzZWQgaW1hZ2UKPiBnZW5lcmF0aW9uIGNvZGUgZm9y
IHN0dWZmIGxpa2UgRFRCcyBldGMuIGFuZCBwcm9iYWJseSBmZXcgbW9yZSBjb3JuZXIgY2FzZXMK
PiBJJ20gbm90IGF3YXJlIGFib3V0IGFuZCB0aGF0IGNvbW1pdCBhMWI3MjViYmE1MzQgKCJidWls
ZDogaWdub3JlIGVycm9ycyBvbgo+IGNvcHlpbmcgZmlybXdhcmUgYmluYXJpZXMgZnJvbSAkKEtE
SVIpIHRvICQoQklOX0RJUikiKSBpcyBtaXNzaW5nIGNvbW1pdAo+IGRlc2NyaXB0aW9uIHNvIHdo
byBrbm93cyA6KQpTZWUgYWJvdmUuCj4+IElzIHRoYXQgd2hhdCB5b3UncmUgbG9va2luZyBmb3I/
Cj4gSXQgZG9lc24ndCBodXJ0IChhbmQgaXMgcHJvYmFibHkgbmVjZXNzYXJ5KSwgYnV0IEkgd2Fz
IHByb3ZpZGluZyB5b3Ugd2l0aCB0aGUKPiBlcnJvciB3aGljaCB3YXMgcmVsYXRlZCB0byB0aGUg
cHJldmlvdXMgY29kZS9KU09OIHBhcnNpbmcgd2hpY2ggeW91J3JlIHNheWluZwo+IHNob3VsZCBi
ZSBmaXhlZCBub3c6Cj4KPiAgIGpzb24uZGVjb2Rlci5KU09ORGVjb2RlRXJyb3I6IEV4dHJhIGRh
dGE6IGxpbmUgMzUgY29sdW1uIDIgKGNoYXIgODIzKQoKSSB0aGluayB0aGUgcHJvYmxlbSBpcyBu
b3cgY2xlYXIgYW5kIChmcm9tIG15IHBvaW50IG9mIHZpZXcpIHNvbHZlZCB2aWEgCmluZGVwZW5k
ZW50IEpTT04gZmlsZXMuCgpCZXN0LApQYXVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
