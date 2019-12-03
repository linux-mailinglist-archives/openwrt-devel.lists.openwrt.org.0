Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDEF11015C
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 16:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4NY+RDFpfhwJ0Nk0DmGS6rbcxPUf0ck0NY0NMk/q2Y=; b=K6viDHhU1eyVpw
	re01THqjCHsUJcBh1jc3h64ulnXUHQtNiyRGiH13a7Tn+TCPza3RBg/WddiYdSDSZKm261Rhx2l7t
	zXnnfXemPDLc8sOXH0lbpFuUz6LMGfP1qc0EPOy72zvg5MlRvOaW45CxV2Ktf2US2lsTD2IvKjq2I
	FBu5wKjh9+McQepild8+mwCfE6BLt/JvQ79smz8oAAlb+6EqIT7Kv6NWploGULFvG2dWdRHxSfakw
	N2D+xC7qESsS5kuekisVEVOKBIf3PpP2qiJAqYC30aMOgGza6Mdqutyfh16qWklqiHlITeR8FlfzU
	XGYYkGP6xXwfWY2LqXpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAEj-0003O7-TV; Tue, 03 Dec 2019 15:37:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAEc-0003Nd-G1
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 15:37:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so3425682wmg.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Dec 2019 07:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jyZjTMXB6c6FhTctAcweV+2VrQrAFv9EDpLxBhFe9Zw=;
 b=nh1DslwuQ8qZk4HBcib9rQqBstp4B/3pAXGViocKaJ9QcwJ17ccFMQ6B9P1DIEa/j1
 xihqt1orL8tNFJsUJOBzyZWjURI2QXAROGqHw9kXILdN/jU51BXyJnxAzypXyv2rSb4e
 mTLRM6PVKJr4x75aYI2DSTTpuDt+4J6Pdn/jmqQRJSpSKaIuXQmbt00EkzpttktbENgf
 xGJx0kFKsRUZQxy7h6At7c1xfF5r26PXLiabcfhxXLmUKp+3bfEPkv+D1+7PtCLqx6kA
 2E0sT65QpolnfEMUKALJ23qp5hsP53w0ETl9U2dBDvKoSd6vAkeo+yWKqbZiU6WFv3H8
 UMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jyZjTMXB6c6FhTctAcweV+2VrQrAFv9EDpLxBhFe9Zw=;
 b=ZEfkmgpwKUI6rxn6CIrfVbN/USHAPIWU365kjxGJgNGvGZk5ycxVQuF68iRAufJDKf
 Qrm+vuYD+CGYm/qIewnCFWp2tbBYzSsNOEBjYxghhA5tkxLyssBiZw7f5kDDQbbDxPqz
 jVamwlzFxgZXJZK+fbOcqyz8DoSOdAKUtAGbD6YTtlP4Sj2ElOEUOCV0BUK7E69qaTPG
 zd2P+hzYhezqRQcX/JBByW2HiEwlrbCKHzhi7fuU/RP/VaR2grr9vG8YcxueK+5Q0QRo
 Dh5k82iCq9coYlZ+LrnQs6+v0dbhL4pTWvaHO1m0fmtJHvYgYUn0LlgOv2HMumzQVrmX
 HDaw==
X-Gm-Message-State: APjAAAW/m0TEogkeIbmuqLJTCwlsgzljgN3I1Ntpnp9aAn1SBlR0BFdK
 WOMr4xXkvlJGhHA5PZiW6uYt5EDXiPnBS1WdkP8=
X-Google-Smtp-Source: APXvYqxXxphkpQQTbTfnYuLbI2EUkuHGxlxsPsXGjrGQiHyu7uINZyCv86TpepWW2umokgT+wzVoIFdLvDHe2bixGDE=
X-Received: by 2002:a05:600c:24ce:: with SMTP id
 14mr33085851wmu.122.1575387422623; 
 Tue, 03 Dec 2019 07:37:02 -0800 (PST)
MIME-Version: 1.0
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
 <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
 <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
 <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>
In-Reply-To: <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 3 Dec 2019 16:36:51 +0100
Message-ID: <CAOiHx=m2X_oNkArn246h5uwwFn3T+RA7n0Gzf8iYOt=J4eC5MA@mail.gmail.com>
To: Hans Dedecker <dedeckeh@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_073706_558618_07B0107E 
X-CRM114-Status: GOOD (  26.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] The meaning of Signed-off-by for netifd [Was:
 Re: [PATCH netifd] interface: warn if ip6hint is truncated]
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBUdWUsIDMgRGVjIDIwMTkgYXQgMTY6MjksIEhhbnMgRGVkZWNrZXIgPGRlZGVja2Vo
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIERlYyAzLCAyMDE5IGF0IDM6NTkgUE0gVXdl
IEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4gd3JvdGU6Cj4gPgo+ID4gSGVs
bG8gSGFucywKPiA+Cj4gPiBPbiAxMi8zLzE5IDg6NTAgQU0sIEhhbnMgRGVkZWNrZXIgd3JvdGU6
Cj4gPiA+IE9uIEZyaSwgTm92IDI5LCAyMDE5IGF0IDk6MjkgUE0gVXdlIEtsZWluZS1Lw7ZuaWcg
PHV3ZUBrbGVpbmUta29lbmlnLm9yZz4gd3JvdGU6Cj4gPiA+Pgo+ID4gPj4gT24gMTEvMjkvMTkg
ODo1MCBQTSwgSGFucyBEZWRlY2tlciB3cm90ZToKPiA+ID4+PiBPbiBXZWQsIE5vdiAyMCwgMjAx
OSBhdCA3OjExIFBNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+IHdy
b3RlOgo+ID4gPj4+Pgo+ID4gPj4+PiBXaGVuIGZvciBleGFtcGxlIGEgLzYwIGlzIGFzc2lnbmVk
IHRvIGEgbmV0d29yayB0aGUgbGFzdCA0IGJpdHMgb2YgdGhlCj4gPiA+Pj4+IGlwNmhpbnQgYXJl
IHVudXNlZC4gRW1pdCBhIHdhcm5pbmcgaWYgYW55IG9mIHRoZXNlIHVudXNlZCBiaXRzIGlzIHNl
dCBhcwo+ID4gPj4+PiBpdCBpbmRpY2F0ZXMgdGhhdCBzb21lb25lIGRpZG4ndCB1bmRlcnN0YW5k
IGhvdyB0aGUgaGludCBpcyB1c2VkLiAoQXMgSQo+ID4gPj4+PiBkaWQgZWFybGllciB0b2RheSBy
ZXN1bHRpbmcgaW4gc3BlbmRpbmcgc29tZSB0aW1lIHVuZGVyc3RhbmRpbmcgdGhlCj4gPiA+Pj4+
IGNvZGUuKQo+ID4gPj4+IFBhdGNoIGFwcGxpZWQgd2l0aCBzb21lIG1pbm9yIHR3ZWFrcwo+ID4g
Pj4+IChodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1wcm9qZWN0L25ldGlmZC5naXQ7YT1jb21t
aXQ7aD1lNDViMTQwODI4NGMwNTk4NGIzOGE5MTBhMWYwYTA3ZDZjNzYxMzk3KTsKPiA+ID4+Cj4g
PiA+PiBUaGUgdXBkYXRlZCB3YXJuaW5nIG1lc3NhZ2UgaXMgZmluZS4KPiA+ID4+Cj4gPiA+Pj4g
SSBhZGRlZCB5b3VyIFNvQiBhcyB0aGlzIHdhcyBtaXNzaW5nIGluIHRoZSBwYXRjaAo+ID4gPj4K
PiA+ID4+IEkgd29uZGVyIHdoYXQgdGhlIHNpZ25pZmljYW5jZSBvZiB0aGUgU29CIGlzIGdpdmVu
IHRoYXQgYSkgaXQncyBub3QKPiA+ID4+IGRvY3VtZW50ZWQgKGF0IGxlYXN0IGluIHRoZSBuZXRp
ZmQgc291cmNlcykgYW5kIGIpIGl0IHNlZW1zIHRvIGJlIG9rIHRvCj4gPiA+PiAiZmFrZSIgc29t
ZW9uZSBlbHNlJ3MgU29CIGFuZCBjKSB0aGVyZSBhcmUgc2V2ZXJhbCBjb21taXRzIGluIHRoZSBu
ZXdlcgo+ID4gPj4gaGlzdG9yeSBvZiBuZXRpZmQgdGhhdCBkb24ndCBoYXZlIGEgU29CIG9mIGVp
dGhlciBBdXRob3Igb3IgQ29tbWl0dGVyCj4gPiA+PiAob3IgYm90aCkuCj4gPiA+IEZvciBkZXRh
aWxzIHdoeSBhIFNvQiBpcyByZXF1aXJlZDsgc2VlCj4gPiA+IGh0dHBzOi8vb3BlbndydC5vcmcv
c3VibWl0dGluZy1wYXRjaGVzI3NpZ25feW91cl93b3JrLgo+ID4gPiBJZiB0aGVyZSdyZSBhbnkg
Y29tbWl0cyBpbiB0aGUgbmV0aWZkIHJlcG8gd2hpY2ggZG9uJ3QgaGF2ZSBhIFNvQiB0aGlzCj4g
PiA+IG11c3QgcmF0aGVyIHN0YXkgYW4gZXhjZXB0aW9uIHRoYW4gYmVjb21pbmcgYSBnZW5lcmFs
IHJ1bGUuCj4gPgo+ID4gb2ssIHNvIHlvdSBjbGFpbSBteSBTb0IgbWVhbnMgdGhhdCAqSSogY29u
ZmlybWVkIHRoYXQgbXkgY2hhbmdlIGlzCj4gPiBjb21wYXRpYmxlIHRvIHRoZSBuZXRpZmQncyBs
aWNlbnNlLiBJIGRpZG4ndCBkbyB0aGF0IHRob3VnaC4KPiA+Cj4gPiBFdmVuIGlmIGl0IHdhcyBt
ZSB3aG8gYWRkZWQgdGhhdCBsaW5lIEkgZG91YnQgaXMgaGFzIGFueSByZWxldmFuY2UgZm9yCj4g
PiBuZXRpZmQgYmVjYXVzZSBub3RoaW5nIGluIHRoZSBuZXRpZmQgc291cmNlcyBleHBsYWlucyB3
aGF0IGFuIFNvQiBtZWFucy4KPiA+IEFuZCB0aGUgbGluayB5b3Ugc2VudCBhcHBsaWVzIG9ubHkg
dG8gcGF0Y2hlcyBmb3Igb3BlbndydCwgbm90IG5ldGlmZC4KPiA+IChBbHNvIGlmIHRoaXMgaXMg
dGhlIG9ubHkgcGxhY2UgZm9yIG9wZW53cnQgd2hlcmUgdGhlIHNpZ25pZmljYW5jZSBvZiBhbgo+
ID4gU29CIGlzIGRlc2NyaWJlZCBJIHdvbmRlciBpZiB0aGlzIGlzIHJlbGV2YW50IGdpdmVuIHRo
YXQgZnJvbSB0aGUgUE9WIG9mCj4gPiBvcGVud3J0LmdpdCB0aGUgd2lraSBpcyBhbiBleHRlcm5h
bCByZXNvdXJjZSB0aGF0IGNhbiBiZSBtb2RpZmllZCBieQo+ID4gYW55b25lLiBXaGF0IGlmIHNv
bWVvbmUgcmVtb3ZlcyBpdGVtIChkKSBmcm9tIHRoZSB3aWtpIG9yIGludHJvZHVjZXMgYW4KPiA+
IChlKT8pCj4gPgo+ID4gRG9uJ3QgZ2V0IG1lIHdyb25nLCBteSBwYXRjaCBpcyBjb21wYXRpYmxl
IHRvIG5ldGlmZCdzIGxpY2Vuc2UuIEJ1dCBpZgo+ID4geW91IHdhbnQgdGhhdCBuZXRpZmQncyBs
aWNlbnNlIHNpdHVhdGlvbiBzdGF5cyByZWFzb25hYmx5IHNhZmUgYW5kCj4gPiBjbGVhbiwgaXQg
SU1ITyBjYW5ub3QgYmUgdGhhdCB5b3UgYWRkIGEgU29CIGZvciBzb21lb25lIGVsc2UsIGFuZCBn
aXZlCj4gPiB0aGF0IFNvQiBhIG1lYW5pbmcgdGhhdCBpc24ndCBkb2N1bWVudGVkIGZvciB5b3Vy
IHByb2plY3QgYW5kIGFzc3VtZXMKPiA+IHRoaW5ncyBhYm91dCB0aGF0IHNvbWVvbmUgZWxzZSB0
aGF0IHlvdSBjYW5ub3Qga25vdyBmb3Igc3VyZS4gU28gaWYgeW91Cj4gPiByZXF1aXJlIGEgZm9y
bWFsaXNtLCBwbGVhc2UgZm9ybWFsaXplIGl0IHByb3Blcmx5LiAoT2YgY291cnNlIElOQUwsIGJ1
dAo+ID4gdGhhdCdzIG15IHVuZGVyc3RhbmRpbmcgb2YgaG93IG9wZW4gc291cmNlIGxpY2Vuc2lu
ZyB3b3Jrcy4pCj4gSSB3b24ndCB3YXN0ZSBmdXJ0aGVyIG15IHRpbWUgYW5kIGVuZXJneSBvbiB0
aGlzIC4uLgo+IEkgYWN0ZWQgaW4gZ29vZCBmYWl0aCBhbmQgbmV4dCB0aW1lIGlmIEkgZmluZCBh
IHBhdGNoIGZyb20geW91IHdpdGhvdXQKPiBTb0IgSSB3aWxsIGp1c3Qgc2ltcGx5IHJlamVjdCBp
dCB0byBhdm9pZCBjb250cmEgcHJvZHVjdGl2ZQo+IGRpc2N1c3Npb25zCgpJIGhhdmUgdG8gYWdy
ZWUgd2l0aCBldmVyeW9uZSwgc28gcGxlYXNlIGRvbid0IGFkZCBTb0JzIGZvciAqYW55b25lKgpl
eGNlcHQgeW91cnNlbGYuIFRoaXMgaXMgYmFzaWNhbGx5IHNpbWlsYXIgdG8gZm9yZ2luZyBhIHNp
Z25hdHVyZQooanVzdCB3aXRob3V0IHRoZSBkaXJlY3QgbGVnYWwgY29uc2VxdWVuY2VzIG9mIHRo
YXQpLgoKPiBQYXRjaGVzIGRlbGl2ZXJlZCBmb3IgYWxsIHByb2plY3RzIChuZXRpZmQvbGlidWJv
eC91YnVzLy4uLikKPiBtYWludGFpbmVkIGJ5IE9wZW5XcnQgbXVzdCBoYXZlIGEgU29CIGluIGxp
bmUgd2hhdCBpcyBkZXNjcmliZWQgb24gdGhlCj4gV2lraTsgdGhpcyBkb2VzIG5vdCBzb2xlbHkg
YXBwbHkgdG8gdGhlIE9wZW5XcnQgcmVwbwoKSW5kZWVkLCBzbyBwYXRjaGVzIHdpdGhvdXQgb25l
LCBvciBhIGJyb2tlbiBvbmUgbmVlZCB0byBiZSBmaXhlZCBieQp0aGUgc3VibWl0dGVyL2F1dGhv
ci4gVGhpcyBjYW5ub3QgYmUgZml4ZWQgdXAgYnkgdGhlIG1haW50YWluZXIKKGV4Y2VwdCBtYXli
ZSB3aXRoIGFuIGV4cGxpY2l0IHBlcm1pc3Npb24gb2YgdGhlIGF1dGhvcikuCgpSZWdhcmRzCkpv
bmFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
