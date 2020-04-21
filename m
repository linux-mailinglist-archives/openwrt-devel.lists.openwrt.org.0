Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E491B2C88
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 18:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7LvuFbJa5e12ZwGXxwXx0CxAKodbGq4rADsAehmvYE=; b=WP6gDg9tTIzY2k
	yoK1R2gLMG7P+Cihfy7IgxzptB+uXtSEhodFWgjFF5nmh8O/fSRx8imdA53cibCc6SY3MwbzwcArE
	VUELt0Utq/R5VKkA+sGHzq9QMNjeEWOeTBxhUGvqM5XRzxfqrw3QNeDtTnamcYf1XPBNkYFq9SBKn
	tQdCD9lJRqoHkV19yWYgls727dQeBabzWku29Ik1tBV7P5tW8LdOwAZXLbUtoA9vllU+wp2fX6GKM
	xIbD27c/GpdJibXl0HdyniHvJkMnV7oWouTiHCy5+/z9jMLwzVuR1DqgHJHNlaleOvF/2dnbskVV2
	WJcUXDyDnMfJJEuf4Fxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvf2-0000db-5Y; Tue, 21 Apr 2020 16:22:12 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvbw-00046L-46
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 16:19:02 +0000
Received: by mail-qt1-x844.google.com with SMTP id w29so12058237qtv.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Apr 2020 09:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3NFKACND9rOeZQQR3pvt4IdmXN3No5ZpHmbvBshrfXA=;
 b=QlWn1dUIrK2uGEyofQr8wBOQqSC9Pi853eLKU+by8eAYBF1aBJ+UN+9E57VBheNUdH
 etvsSugprvS4N617k59mI/TMK3O/Ovhyvho9raHHFBhBgHE2WW5Np+zqecpAVb9l2AnA
 47PyY/a/6fT+hoVGJ1hKCjC4sYVODJUiTJTlPK9MYAhQgQw8KutGAp7KapJhkyfpcWYo
 NQejYNoNKHe8zaKI3rjJ7UBL+cmZx2NspPHJ55J1aOlAvQ4bEFXTDZAQJ037adENZcrG
 BV3y8tWPggCnHT/OgzatpQLByA0byITPJWAWWthQ2SpMEWyKarx04CypMHAwEMkSHxtT
 2ZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3NFKACND9rOeZQQR3pvt4IdmXN3No5ZpHmbvBshrfXA=;
 b=AIfA/UarD42Lj2eUgb2E1kOzQcac68+llekwFMFga4kDrXnNUPSlZKgIS0ChSGbXCx
 26eIUskQTF5vwxawHpvXw7HbADL5u4hJryfDVgE9rdYvbaYnffuvGPBfOAn6jg+nCkbI
 spW7vWpy56H7NMdtew9Lcc7oOPz6FJlVmeO4+bytxt9j0e7nxoK5IALts1+hW2RIAryC
 lpJs8ZGa1t4jgzgv/TPh1V+7aMknz4NebX1C7f4mmWxPIFDL7PcUbNHbND0t2guizZ7w
 Mp1DzG/vppSDqy028l8fmresI8eXSLtcI9iKwSjJju8BQp666FAHJXG6plvXqErqQ1JY
 O1dg==
X-Gm-Message-State: AGi0PubwhcbkziTnlgJn3IRiVK6ZLV2M1gCMyDJ+asY7KmjMR7pRN/SG
 ZTEXSI9uPLIui32/ij6QOinjqTTVLRYOr2eFzdPRMudS
X-Google-Smtp-Source: APiQypLuxGQsl+Komhp/BVjCY12rZPaJhdcyvzb6KaUsquh+KhbTjYRWtYjyoWOxordQumtVpsAm5GUeNvdt4xGaEGg=
X-Received: by 2002:ac8:70c8:: with SMTP id g8mr22306089qtp.385.1587485933869; 
 Tue, 21 Apr 2020 09:18:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
 <ZMS29Q.4V5BN6QIEH3P@volatilesystems.org>
 <CAOZt9c-J158um4rvwLhPXio8fa3t16AQJj=8mfEVhC64CSqZ4Q@mail.gmail.com>
 <1587474773.1760.0@mail.volatilesystems.org>
 <1587484371.1760.2@mail.volatilesystems.org>
In-Reply-To: <1587484371.1760.2@mail.volatilesystems.org>
From: Szabolcs Hubai <szab.hu@gmail.com>
Date: Tue, 21 Apr 2020 18:18:42 +0200
Message-ID: <CAOZt9c9dd2iPs6jvxnnxZrm_iEtCTK26nRBLCNsQjMXXcMdJmg@mail.gmail.com>
To: Stijn Segers <foss@volatilesystems.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_091900_278115_64237596 
X-CRM114-Status: GOOD (  31.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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

SGkgU3Rpam4sCgpTdGlqbiBTZWdlcnMgPGZvc3NAdm9sYXRpbGVzeXN0ZW1zLm9yZz4gZXp0IMOt
cnRhIChpZMWRcG9udDogMjAyMC4gw6Fwci4KMjEuLCBLLCAxNzo1Mik6Cj4KPiBIaSwKPgo+Cj4g
T3AgZGluc2RhZyAyMSBhcHJpbCAyMDIwIG9tIDE1OjEyIHNjaHJlZWYgU3Rpam4gU2VnZXJzCj4g
PGZvc3NAdm9sYXRpbGVzeXN0ZW1zLm9yZz46Cj4gPiBIaSBTemFib2xjcywKPiA+Cj4gPiBPcCBt
YWFuZGFnIDIwIGFwcmlsIDIwMjAgb20gMTE6MDEgc2NocmVlZiBTemFib2xjcyBIdWJhaQo+ID4g
PHN6YWIuaHVAZ21haWwuY29tPjoKPiA+PiBIZWxsbywKPiA+Pgo+ID4+IFN0aWpuIFNlZ2VycyA8
Zm9zc0B2b2xhdGlsZXN5c3RlbXMub3JnPiBlenQgw61ydGEgKGlkxZFwb250OiAyMDIwLgo+ID4+
ICDDoXByLgo+ID4+IDIwLiwgSCwgOToyNSk6Cj4gPj4+Cj4gPj4+ICBIaSBTemFib2xjcywKPiA+
Pj4KPiA+Pj4gIE9wIHpvbmRhZyAxOSBhcHJpbCAyMDIwIG9tIDIwdTQ5IHNjaHJlZWYgU3phYm9s
Y3MgSHViYWkKPiA+Pj4gIDxzemFiLmh1QGdtYWlsLmNvbT46Cj4gPj4+ICA+IFRoaXMgZGV2aWNl
IGhhcyB0cm91YmxlIGV4dHJhY3RpbmcgYmlnIGtlcm5lbCBmcm9tIGZsYXNoLAo+ID4+PiAgPiBh
bmQgc3VwcG9ydHMgTFpNQSBjb21wcmVzc2VkIGtlcm5lbHMgb25seS4KPiA+Pj4gID4KPiA+Pj4g
ID4gVXNpbmcgT3BlbldydCBrZXJuZWwgbG9hZGVyIHNhdmVzIHVzIDY0IEtCIGNvbXBhcmVkIHRv
IHRoZQo+ID4+PiAgIGRpY3Rpb25hcnkKPiA+Pj4gID4gc2l6ZSBsaW1pdGluZyB3b3JrYXJvdW5k
Lgo+ID4+PiAgPgo+ID4+PiAgPiBGYWN0b3J5IGltYWdlIHNpemVzIChjb21taXQ6IDVmMTI2YzU0
MWE3NCkgd2l0aAo+ID4+PiAgICJDT05GSUdfQUxMX0tNT0RTPXkiOgo+ID4+PiAgPiAtIG9yaWdp
bmFsICgiLWQyMyIsIGRlZmF1bHQpOiA0Nzg0MTg4IGJ5dGVzLCBMWk1BIEVSUk9SIDEKPiA+Pj4g
ID4gLSB3aXRoICItZDE5IjogNDkxNTI2MCwgTFpNQSBFUlJPUiAxCj4gPj4+ICA+IC0gd2l0aCAi
LWQxOCI6IDQ5MTUyNjAsIGRpZmYgdG8gb3JpZ2luYWw6ICsxMjggS0IKPiA+Pj4gID4gLSB3aXRo
ICItZDE3IjogNDk4MDc5NiwgZGlmZiB0byBvcmlnaW5hbDogKzE5MiBLQgo+ID4+PiAgPiAtIHdp
dGggdGhpcyBwYXRjaDogNDg0OTcyNCwgZGlmZiB0byBvcmlnaW5hbDogKzY0IEtCCj4gPj4+ICA+
Cj4gPj4+ICA+IFRvIHNhdmUgc29tZSBDUFUgY3ljbGUsIHVzZSBtaW5pbWFsIGNvbXByZXNzaW9u
ICgiLWEwIikgZm9yIHRoZQo+ID4+PiAgIExaTUEKPiA+Pj4gID4gY29tcHJlc3NlZCB1SW1hZ2Uu
Cj4gPj4+ICA+Cj4gPj4+ICA+IFRoZSBtb3N0IHJvYnVzdCBzb2x1dGlvbiB3b3VsZCB1c2UgYSBk
aWZmZXJlbnQgbG9hZGVyLAo+ID4+PiAgPiB3aGljaCByZWFkcyB0aGUgY29tcHJlc3NlZCBrZXJu
ZWwgZGlyZWN0bHkgZnJvbSB0aGUgZmxhc2guCj4gPj4+ICA+IFNlZSB0aGUgdGhyZWFkIGF0IFsw
XSBmb3IgbW9yZSBkZXRhaWxzIQo+ID4+Pgo+ID4+PiAgVGhhbmtzIGZvciBnaXZpbmcgdGhlIERJ
Ui04NjBMIHNvbWUgbG92ZS4gSSdkIGxpa2UgdG8gdGVzdCAoaW4KPiA+Pj4gZmFjdCAgIEkKPiA+
Pj4gIGFscmVhZHkKPiA+Pj4gIGRpZCB3aXRoIHlvdXIgcHJldmlvdXMgcGF0Y2hlcykgYW5kIGhv
b2sgdXAgc2VyaWFsLCBiZWNhdXNlIGZpcnN0Cj4gPj4+ICAgYm9vdAo+ID4+PiAgd2lsbAo+ID4+
PiAgd29yayBidXQgYW55IHJlYm9vdCAod2hldGhlciBJIGNoYW5nZSBzZXR0aW5ncyBvciBub3Qp
IHdpbGwganVzdAo+ID4+PiAgIGdpdmUKPiA+Pj4gIG1lIGEKPiA+Pj4gIGJsaW5raW5nIG9yYW5n
ZSBMRUQuIExpa2UgY2xvY2t3b3JrLgo+ID4+Pgo+ID4+PiAgV291bGQgeW91IGhhcHBlbiB0byBo
YXZlIGFueSBwb2ludGVycyAob3IgcGljdHVyZXMpIG9uIGhvdyB0byBvcGVuCj4gPj4+ICAgdGhl
Cj4gPj4+ICBjYXNlPwo+ID4+PiAgSSBoYXZlIHVuc2NyZXdlZCB0aGUgYm90dG9tIGJ1dCB0aGVy
ZSBzZWVtIHRvIGJlIGxhdGNoZXMgb24gdGhlCj4gPj4+ICAgaW5zaWRlCj4gPj4+ICAoanVkZ2lu
Zwo+ID4+PiAgZnJvbSB0aGUgRkNDIHBpY3R1cmVzKSBhbmQgSSBhbSB1bmFibGUgdG8gcHJ5IGl0
IG9wZW4uCj4gPj4+Cj4gPj4+ICBUaGFua3MgYW5kIHNvcnJ5IGZvciB0aGUgdG9waWMgaGlqYWNr
IDotKS4KPiA+Pj4KPiA+Pj4gIFN0aWpuCj4gPj4+Cj4gPj4KPiA+PiBJIGdvdCBteSBjbHVlIGZy
b20gdGhlICJELUxJTksgRElSLTg2MEwgLSBkaXNhc3NlbWJsZSIgdGl0bGVkCj4gPj4gWW91VHVi
ZSAgdmlkZW8uIFswXQo+ID4+IEluIHNob3J0Ogo+ID4+IC0gMyBzY3Jld3Mgb24gdGhlIGJvdHRv
bSwgdW5kZXIgdGhlIHBhZHM6IGlmIHlvdSBhcmUgbG9va2luZyBhdCB0aGUKPiA+PiBib3R0b20g
b2YgdGhlIHJvdXRlciwgdGhlIHNjcmV3cyBhcmUgdW5kZXIgdGhlIGxlZnQsIHRoZSByaWdodCBh
bmQKPiA+PiB0aGUKPiA+PiBib3R0b20gcGFkcwo+ID4+IC0gb25lLCAiRElSLTg2MEwiIHRpdGxl
ZCBzdGlja2VyIG9uIHRoZSB0b3AsIHdpdGggYSAiY3V0IGluIiBzdGFydGluZwo+ID4+IHBvaW50
IGluIHRoZSBmcm9udCwgd2hlcmUgdGhlIGxlZHMgcmVzaWRlCj4gPgo+ID4KPiA+IFRoYW5rcyEg
VGhhdCBzdGlja2VyIHR1cm5lZCBvdXQgdG8gYmUgc28gc3R1cmR5IC0gaXQgZG9lc24ndCBsb29r
IG9yCj4gPiBmZWVsIGxpa2UgYSBzdGlja2VyICphdCBhbGwqLiBUaGF0J3Mgd2hhdCBnb3QgbWUu
Cj4gPgo+ID4gU28sIEkgaGF2ZSBzZXJpYWwgbm93LiBBIGZldyB0aGluZ3MgSSBjYW4gdGVsbCBm
cm9tIG15IHNpZGU6Cj4gPiAtIHZhbmlsbGEgbWFzdGVyIGltYWdlICh5ZXN0ZXJkYXkncyBpbWFn
ZSk6IGRvZXMgbm90IGJvb3QsIHdoaWNoIGlzCj4gPiBleHBlY3RlZCBvZiBjb3Vyc2UuIEVycm9y
IEknbSBzZWVpbmc6ICJMWk1BIEVSUk9SIDEgLSBtdXN0IFJFU0VUCj4gPiBib2FyZCB0byByZWNv
dmVyIgo+ID4gLSBsb2NhbCBtYXN0ZXIgYnJhbmNoIGltYWdlICh3aXRoIHlvdXIgbGFzdCBwYXRj
aCkgd2l0aCBkZWZhdWx0Cj4gPiAuY29uZmlnOiBib290cyBmaW5lLCBldmVuIGFmdGVyIG11bHRp
cGxlIHJlYm9vdHMuCj4gPiAtIGxvY2FsIG1hc3RlciBicmFuY2ggaW1hZ2UgKHdpdGggeW91ciBs
YXN0IHBhdGNoKSB3aXRoIG15IG93bgo+ID4gY29uZmlnOiBib290cyBmaW5lIHRoZSBmaXJzdCB0
aW1lLiBBZnRlciB0aGF0LCBpdCBqdXN0IGJhcmtzIGFuZCBzYXlzCj4gPiAnQmFkIEhlYWRlciBj
aGVja3N1bScuCj4gPgo+ID4gSXQgbG9va3MgbGlrZSB0aGVyZSdzIHNvbWV0aGluZyB3aXRoIG15
IC5jb25maWcgdGhhdCBicmVha3MgaXQuLi4gVGhlCj4gPiAoa2VybmVsPykgaW1hZ2UgaXMgcHJl
dHR5IGJpZyAoOTEwOTQ0NCBieXRlcz8pIGZyb20gd2hhdCBJIGNhbiB0ZWxsLAo+ID4gbWF5YmUg
dGhhdCdzIHN0aWxsIGFuIGlzc3VlIGhlcmUuCj4gPgo+IEFzIGEgZm9sbG93LXVwOiB3aXBpbmcg
bXkgY2NhY2hlIHdvcmtlZCB3b25kZXJzIGl0IHNlZW1zLiBBbGwgZ29vZCBub3cuCj4KCkdyZWF0
IG5ld3MsIHRoYW5rcyEgOikKCgotLQpTemFib2xjcwoKCj4gQ2hlZXJzCj4KPiBTdGlqbgo+Cj4K
PiA+IFRoaXMgaXMgd2hhdCBkZWZhdWx0IGNvbmZpZyBwcmludHM6Cj4gPgo+ID4gMzogU3lzdGVt
IEJvb3Qgc3lzdGVtIGNvZGUgdmlhIEZsYXNoLgo+ID4gIyMgQm9vdGluZyBpbWFnZSBhdCBiZmM1
MDAwMCAuLi4KPiA+IGFkZHI6ODA1MDAwMDAKPiA+IFdlIGhhdmUgU0VBTUEsIEltYWdlIFNpemUg
PSAyMzU5MjMyCj4gPiBWZXJpZnlpbmcgQ2hlY2tzdW0gLi4uCj4gPiBVbmNvbXByZXNzaW5nIFNF
QU1BIGxpbnV4Lmx6bWEgLi4uIE9LCj4gPgo+ID4gQW5kIG15IGN1c3RvbSBjb25maWcgKHdoaWNo
IGJvb3RzIGZpbmUgdGhlIGZpcnN0IHRpbWUgYWZ0ZXIgZmxhc2hpbmcKPiA+IHNvbWVob3csIHRo
ZW4gZ29lcyBzdHJhaWdodCB0byByZWNvdmVyeSBtb2RlIHNvbWVob3cpOgo+ID4KPiA+IDM6IFN5
c3RlbSBCb290IHN5c3RlbSBjb2RlIHZpYSBGbGFzaC4KPiA+ICMjIEJvb3RpbmcgaW1hZ2UgYXQg
YmZjNTAwMDAgLi4uCj4gPiBhZGRyOjgwNTAwMDAwCj4gPiBXZSBoYXZlIFNFQU1BLCBJbWFnZSBT
aXplID0gOTEwOTQ0NAo+ID4gVmVyaWZ5aW5nIENoZWNrc3VtIC4uLgo+ID4gQmFkIEhlYWRlciBD
aGVja3N1bS4KPiA+Cj4gPiBFbnRlcmluZyBIVFRQIHNlcnZlci4KPiA+Cj4gPgo+ID4gQW55d2F5
LCBJJ2xsIHNlbmQgaW4gbXkgdGVzdGVkLWJ5IGZvciB5b3VyIHBhdGNoIHNvIGhvcGVmdWxseSBp
dCBjYW4KPiA+IGdldCBtZXJnZWQhIFRoYW5rcyBmb3IgdGhlIHdvcmsgYW5kIHlvdXIgaGVscCEK
PiA+Cj4gPgo+ID4gQ2hlZXJzCj4gPgo+ID4gU3Rpam4KPiA+Cj4gPj4gLSAzIHNjcmV3cyBvbiB0
aGUgdG9wLCB1bmRlciB0aGUgc3RpY2tlcgo+ID4+Cj4gPj4gRGlzYXNzZW1ibGU6Cj4gPj4gLSBn
ZXQgb2ZmIHRoZSBwYWRzICh0aGV5IHdvbid0IHN0aWNrIGJhY2sgYWZ0ZXIgYSBmZXcgZGF5cyA7
KSwgdXNlCj4gPj4gdmVyeSB0aGluIGRvdWJsZSBzaWRlZCBzdGlja2VyIHRvIGhlbHAgdGhlbSkK
PiA+PiAtIGdldCB0aGUgYm90dG9tIHNjcmV3cwo+ID4+IC0gcGVlbCBvZmYgdGhlIHJvdW5kZWQg
c3RpY2tlciBmcm9tIHRoZSB0b3Agd2l0aCB0aGluIGJ1dCBmbGV4aWJsZQo+ID4+IGtuaWZlIG9y
IHJhem9yIGJsYWRlLCBldGMgLi4uCj4gPj4gLSBnZXQgdGhlIHVwcGVyIHNjcmV3cwo+ID4+IC0g
c2xpZGUgdGhlIGZyb250IGFuZCByZWFyIGhhbGYgdmVydGljYWxseSBhIGxpdHRsZQo+ID4+IC0g
c2VwYXJhdGUgdGhlbQo+ID4+Cj4gPj4gVGhlIHNlcmlhbCBzZXR0aW5ncyBjYW4gYmUgZm91bmQg
b24gdGhlIHdpa2kgWzFdOgo+ID4+IC0gUGlub3V0OiBUWCwgR05ELCAzdjMsIGVtcHR5LCBSWAo+
ID4+IC0gQml0cyBwZXIgc2Vjb25kOiA1NzYwMAo+ID4+IC0gRGF0YSBiaXRzOiA4Cj4gPj4gLSBQ
YXJpdHk6IE5vbmUKPiA+PiAtIFN0b3AgYml0czogMQo+ID4+IC0gRmxvdyBjb250cm9sOiBOb25l
Cj4gPj4KPiA+PiBJIGhhdmUgYSBDUDIxMDIgVVNCIHRvIFRUTCBtb2R1bGUsIGFuZCB1c2VkIHdp
dGggIm1pbmljb20gLUQKPiA+PiAgL2Rldi90dHlVU0IwIi4KPiA+Pgo+ID4+Cj4gPj4gSW50ZXJl
ZXN0aW5nbHksIHdoZW4gSSBjb25uZWN0ZWQgd2l0aCBzZXJpYWwgdG8gdGhlIHJvdXRlciBpdCB3
YXMKPiA+PiBzb21ldGltZSB1bnN0YWJsZToKPiA+PiAqIHJlZnVzZSB0byBzdGFydAo+ID4+ICog
ZnJlZXplIGF0IGJvb3Qgc29vbiBhZnRlcjogIkVycm9yIGFwcGx5aW5nIHNldHRpbmcsIHJldmVy
c2UgdGhpbmdzCj4gPj4gYmFjayIgbWVzc2dlCj4gPj4KPiA+PiBPdGhlciB0aGFuIHRoaXMsIEkg
aGF2ZSBubyBwcm9ibGVtIHdpdGggazUuNC4KPiA+Pgo+ID4+Cj4gPj4KPiA+PiBbMF06IGh0dHBz
Oi8veW91dHUuYmUvdGY3bk1xZFVLRDQKPiA+PiBbMV06IGh0dHBzOi8vb3BlbndydC5vcmcvdG9o
L2QtbGluay9kaXItODYwbCNhY2Nlc3Nfd2l0aF9zZXJpYWxfY2FibGUKPiA+Pgo+ID4+Cj4gPj4g
LS0KPiA+PiBSZWdhcmRzLAo+ID4+IFN6YWJvbGNzCj4gPj4KPiA+Pgo+ID4+Pgo+ID4+PiAgPgo+
ID4+PiAgPiBbMF0KPiA+Pj4gID4KPiA+Pj4gICBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9w
aXBlcm1haWwvb3BlbndydC1kZXZlbC8yMDIwLUFwcmlsLzAyMjkyNi5odG1sCj4gPj4+ICA+Cj4g
Pj4+ICA+IFNpZ25lZC1vZmYtYnk6IFN6YWJvbGNzIEh1YmFpIDxzemFiLmh1QGdtYWlsLmNvbT4K
PiA+Pj4gID4gLS0tCj4gPj4+ICA+ICB0YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5t
ayB8IDQgKysrLQo+ID4+PiAgPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+ID4+PiAgPgo+ID4+PiAgPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3Jh
bWlwcy9pbWFnZS9tdDc2MjEubWsKPiA+Pj4gID4gYi90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdl
L210NzYyMS5tawo+ID4+PiAgPiBpbmRleCBhYTY4MzZkNTBhLi5lOTU0ZjczMGRhIDEwMDY0NAo+
ID4+PiAgPiAtLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tawo+ID4+PiAg
PiArKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tawo+ID4+PiAgPiBAQCAt
MjE4LDcgKzIxOCw5IEBAIGRlZmluZSBEZXZpY2UvZGxpbmtfZGlyLTg2MGwtYjEKPiA+Pj4gID4g
ICAgJChEZXZpY2Uvc2VhbWEpCj4gPj4+ICA+ICAgIEJMT0NLU0laRSA6PSA2NGsKPiA+Pj4gID4g
ICAgU0VBTUFfU0lHTkFUVVJFIDo9IHdyZ2FjMTNfZGxpbmsuMjAxM2d1aV9kaXI4NjBsYgo+ID4+
PiAgPiAtICBLRVJORUwgOj0ga2VybmVsLWJpbiB8IGFwcGVuZC1kdGIgfCByZWxvY2F0ZS1rZXJu
ZWwgfCBsem1hIHwKPiA+Pj4gID4gdUltYWdlIGx6bWEKPiA+Pj4gID4gKyAgTE9BREVSX1RZUEUg
Oj0gYmluCj4gPj4+ICA+ICsgIEtFUk5FTCA6PSBrZXJuZWwtYmluIHwgYXBwZW5kLWR0YiB8IGx6
bWEgfCBsb2FkZXIta2VybmVsIHwgXAo+ID4+PiAgPiArICByZWxvY2F0ZS1rZXJuZWwgfCBsem1h
IC1hMCB8IHVJbWFnZSBsem1hCj4gPj4+ICA+ICAgIElNQUdFX1NJWkUgOj0gMTYwNjRrCj4gPj4+
ICA+ICAgIERFVklDRV9WRU5ET1IgOj0gRC1MaW5rCj4gPj4+ICA+ICAgIERFVklDRV9NT0RFTCA6
PSBESVItODYwTAo+ID4+PiAgPiAtLQo+ID4+PiAgPiAyLjE3LjEKPiA+Pj4gID4KPiA+Pj4gID4K
PiA+Pj4gID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+Pj4gID4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+Pj4gID4gb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwo+ID4+PiAgPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+ID4+Pgo+ID4+Pgo+ID4+Cj4gPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdAo+ID4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiA+
PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IG9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
