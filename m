Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E08B1A1541
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 20:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvoRl2koUJZF5PoZrFvG2awFw0T9qESeda6I1oXD63k=; b=KjL8EaqqoKoW5d
	7sLA3+77bCuU2da9fs2wYfPqhw9W0YOpLlk1SsxkBGlWnZ93uVS21XCS23wd0snr3/kDnR9Y1accP
	kCklQinqA1YfqzG+3y9x70HMpSk/Ue7ehjE1LqYAwBPdNEd5pT+cSOK0FNi8TlGMacYDJKFlw7MrO
	Kcq0fKAH1YQWWgUiMA9UY4pNE7ffC0k/gf+n0zwK9uGGK/uIyD7Zc8eygxSVO/aSCo3yaY1F4S65q
	anPXga2KRxPxBg4JkkEhq5WL7CDW0rrK5Ml6Sx7HinQ5gElEf0mI7OyWQ0hiKSZhZZ5xOu9oNa0K9
	N2pk97yARK2uyPeab1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtKA-00035t-Of; Tue, 07 Apr 2020 18:51:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtK0-00034k-7V
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 18:51:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id i20so4925767ljn.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 11:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ki1ahzAZXF/Xa72sMCAumgbe7iUDIXvG4+QRsJWfICs=;
 b=gJ/mwj/WV3+qnL4voKeaFI3cPLEHAifYepN7wRV9WxzOOyopzSGtOUD3LFr4ZXZSgd
 VP3/x24tqluB/ayEO+qEWvRYT8jvKvC/m2vBv2bcC2ntZKXjDBvXJFMxg3tN70IZTxsa
 DvixHcBbK4kv8BRvEQhsq05sU+rD/XgVtKMvQemSEx+lLbrwtn02DsQElJEh+7vltQMB
 4TWjB2QACqnLNE+gqW2w4gl3Su1MaNrWiNmimMhu6IwG+NasrMF04+76fKf2vqZN3uBf
 jSY+07TFxRgb9FNZz3UpoyHnbCI3M7wN8Bhv0X5dOvLruC+N34hQ1dXcKCCNQMJFZxve
 pjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ki1ahzAZXF/Xa72sMCAumgbe7iUDIXvG4+QRsJWfICs=;
 b=GedpfrkY4MAen5fWqwnT6FQvOnv9nKy1ZUYL4FvO0+zqB80XaKTeTQI4NtYez0SZ0T
 r5jCOIEN5/rJ5CC57ytEB9bA9D2i9PPATCwmJuQHAJ3xv7ebhkWbncyx3yhCE9mqm2Mi
 R604ji6jUKY4gw4q1y8ykm8TLy2TtWgKwgu+y7u4M6o6hN0KGwQUB4kRbd5yjdqwcXWr
 Nfe0+BJ1rgiuil4FdixEYiYGXD4zeekWYvpAtY2UucBOrlLHVyy5tri0w6GjN6y6UJL3
 d9TQ+uN1aFfevAPanTgKbUaCDRRFcaJD90gmOiDFkrFa4w03877Hp1z1j1/DHL0PhfLQ
 7EcA==
X-Gm-Message-State: AGi0PubVgk/ZKtC0/w9irLyvXfG1HRByFy95D5ddO0TDoGjHc9RQDhMR
 dVFCHQEg3qM2OQb0nwUtub5xZ2oQ6E++K6TWJD4=
X-Google-Smtp-Source: APiQypJNI6p6vGFjah6g350VH1hZYXv6NgUc1A3ZjrOrHHCjb0UE3dtjoSYZA6+uXyDfNMm4vsuwyCff1m24B6jcioM=
X-Received: by 2002:a2e:7a18:: with SMTP id v24mr2652617ljc.34.1586285497829; 
 Tue, 07 Apr 2020 11:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <012501d600a4$5c819100$1584b300$@adrianschmutzler.de>
 <20200326191041.2179-1-dobrovolskiy.alexey@gmail.com>
 <041401d60c4d$b0e96830$12bc3890$@adrianschmutzler.de>
In-Reply-To: <041401d60c4d$b0e96830$12bc3890$@adrianschmutzler.de>
From: Alexey Dobrovolskiy <dobrovolskiy.alexey@gmail.com>
Date: Tue, 7 Apr 2020 21:51:26 +0300
Message-ID: <CANCYDrxbZQm7ZcX=S+Xy7t9MZNzu8vYbmf7n9WrjKVpGAwnhSw@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_115140_299458_A8F08150 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use full 8MB flash on ZyXEL
 Keenetic
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQWRyaWFuLAoKdGhhbmtzIGZvciB5b3UgcmV2aWV3LgoKPiBCdXQgSSBzdGlsbCB3b25kZXIg
aG93IHRoaXMgZGV2aWNlIGlzIG5vdyBzdXBwb3J0ZWQgZm9yIGFsbW9zdCB0aHJlZSB5ZWFycyBu
b3cgYW5kIG5vYm9keSBtZW50aW9uZWQgdGhhdCBzbyBmYXI/ClRoZSBwcm9ibGVtIGhhcyBhbHJl
YWR5IGJlZW4gZGVzY3JpYmVkIGluIGJ1Z3JlcG9ydCBGUyMyNDg3IFsxXS4KU28gaSBzaG91bGQg
YWxzbyBhZGQKRml4ZXM6IEZTIzI0ODcKCj4gRG8geW91IGhhdmUgZnVydGhlciBldmlkZW5jZT8K
V2lraURldmkgcGFnZSBbMl0gc2F5cyB0aGF0IFp5WEVMIEtlZW5ldGljIGhhcyBGTEExOiA4IE1p
QiwgdGhlcmUgYXJlCnNvbWUgYXJ0aWNsZXMgd2l0aCBzcGVjcyBbM10sIFs0XSAoaW4gUnVzc2lh
bikuCkkgb3duIHRoaXMgZGV2aWNlIGFuZCB0ZXN0ZWQgdGhlIHBhdGNoIGJlZm9yZSBzZW5kaW5n
LgpJIGZpbGVkIGEgYnVncmVwb3J0IEZTIzI5NjQgWzVdIGFib3V0IGFub3RoZXIgcHJvYmxlbSB3
aXRoIFp5WEVMCktlZW5ldGljLCB0aGVyZSB5b3UgbWF5IGZpbmQgYm9vdGxvZ3Mgd2l0aCB0aGlz
IHBhdGNoIGFwcGxpZWQuCklmIGl0IGlzIG5vdCBlbm91Z2gsIGkgY2FuIGNpdGUgbW9yZSBpbnRl
cm5ldCBmb3J1bSBwb3N0cyBhYm91dCB0aGlzIHByb2JsZW0uCldoYXQgb2YgdGhlc2Ugc2hvdWxk
IGkgYWRkIGludG8gY29tbWl0IGRlc2NyaXB0aW9uPwoKPiBEZXNwaXRlLCBpZiB0aGlzIGlzIG1l
cmdlZCwgc29tZWJvZHkgc2hvdWxkIGFkZAo+Cj4gRml4ZXM6IGE3Y2JmNTllMGUwNCAoInJhbWlw
czogYWRkIG5ldyBkZXZpY2UgWnlYRUwgS2VlbmV0aWMgYXMga24iKQoKSSdsbCBhZGQuCgpbMV0g
aHR0cHM6Ly9idWdzLm9wZW53cnQub3JnL2luZGV4LnBocD9kbz1kZXRhaWxzJnRhc2tfaWQ9MjQ4
NwpbMl0gaHR0cHM6Ly93aWtpZGV2aS53aS1jYXQucnUvWnlYRUxfS2VlbmV0aWMKWzNdIGh0dHBz
Oi8vd3d3Lml4YnQuY29tL2NvbW0venl4ZWwta2VlbmV0aWMuc2h0bWwKWzRdIGh0dHBzOi8vM2Ru
ZXdzLnJ1LzYwODc3NC9wYWdlLTIuaHRtbApbNV0gaHR0cHM6Ly9idWdzLm9wZW53cnQub3JnL2lu
ZGV4LnBocD9kbz1kZXRhaWxzJnRhc2tfaWQ9Mjk2NAoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCtC/
0L0sIDYg0LDQv9GALiAyMDIwINCzLiDQsiAyMjo1OCwgPG1haWxAYWRyaWFuc2NobXV0emxlci5k
ZT46Cj4KPiBIaSBBbGV4ZXksCj4KPiB0aGlzIHBhdGNoIGlzIG9idmlvdXNseSBjb3JyZWN0IGlu
IGl0cyBpbXBsZW1lbnRhdGlvbi4KPgo+IEJ1dCBJIHN0aWxsIHdvbmRlciBob3cgdGhpcyBkZXZp
Y2UgaXMgbm93IHN1cHBvcnRlZCBmb3IgYWxtb3N0IHRocmVlIHllYXJzIG5vdyBhbmQgbm9ib2R5
IG1lbnRpb25lZCB0aGF0IHNvIGZhcj8KPgo+IERvIHlvdSBoYXZlIGZ1cnRoZXIgZXZpZGVuY2U/
Cj4KPiBJbnRlcmVzdGluZ2x5LCBJIGp1c3QgZm91bmQgdGhhdCB0aGUgaW5pdGlhbCBzdXBwb3J0
IGNvbW1pdCBldmVuIG1lbnRpb25zICJGbGFzaDogOCBNaUIiLiBCdXQgdGhpcyBjb3VsZCBhbHNv
IGJlIGFuIGVycm9yIGluIHRoZSBjb21taXQgbWVzc2FnZS4KPgo+IERlc3BpdGUsIGlmIHRoaXMg
aXMgbWVyZ2VkLCBzb21lYm9keSBzaG91bGQgYWRkCj4KPiBGaXhlczogYTdjYmY1OWUwZTA0ICgi
cmFtaXBzOiBhZGQgbmV3IGRldmljZSBaeVhFTCBLZWVuZXRpYyBhcyBrbiIpCj4KPiBCZXN0Cj4K
PiBBZHJpYW4KPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IEFsZXhl
eSBEb2Jyb3ZvbHNreSBbbWFpbHRvOmRvYnJvdm9sc2tpeS5hbGV4ZXlAZ21haWwuY29tXQo+ID4g
U2VudDogRG9ubmVyc3RhZywgMjYuIE3DpHJ6IDIwMjAgMjA6MTEKPiA+IFRvOiBtYWlsQGFkcmlh
bnNjaG11dHpsZXIuZGUKPiA+IENjOiBBbGV4ZXkgRG9icm92b2xza3kgPGRvYnJvdm9sc2tpeS5h
bGV4ZXlAZ21haWwuY29tPjsgb3BlbndydC0KPiA+IGRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4g
PiBTdWJqZWN0OiBbUEFUQ0hdIHJhbWlwczogdXNlIGZ1bGwgOE1CIGZsYXNoIG9uIFp5WEVMIEtl
ZW5ldGljCj4gPgo+ID4gWnlYRUwgS2VlbmV0aWMgaGFzIDhNQiBmbGFzaCwgYnV0IE9wZW5XcnQg
dXNlcyBvbmx5IDRNQi4KPiA+IFRoaXMgY29tbWl0IGZpeGVzIHRoZSBwcm9ibGVtLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBEb2Jyb3ZvbHNreSA8ZG9icm92b2xza2l5LmFsZXhleUBn
bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICB0YXJnZXQvbGludXgvcmFtaXBzL2R0cy9ydDMwNTJfenl4
ZWxfa2VlbmV0aWMuZHRzIHwgMiArLQo+ID4gIHRhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvcnQz
MDV4Lm1rICAgICAgICAgICAgICAgfCAyICstCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9yYW1pcHMvZHRzL3J0MzA1Ml96eXhlbF9rZWVuZXRpYy5kdHMKPiA+IGIvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9kdHMvcnQzMDUyX3p5eGVsX2tlZW5ldGljLmR0cwo+ID4gaW5kZXggYWQ2NDFmNDdl
NC4uNDM2NzQzY2ZmMyAxMDA2NDQKPiA+IC0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL3J0
MzA1Ml96eXhlbF9rZWVuZXRpYy5kdHMKPiA+ICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRz
L3J0MzA1Ml96eXhlbF9rZWVuZXRpYy5kdHMKPiA+IEBAIC00OCw3ICs0OCw3IEBACj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgcGFydGl0aW9uQDUwMDAwIHsKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZGVueCx1aW1hZ2UiOwo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiZmlybXdhcmUiOwo+ID4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmVnID0gPDB4NTAwMDAgMHgzYjAwMDA+Owo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4NTAwMDAgMHg3YjAwMDA+Owo+ID4gICAgICAgICAg
ICAgICAgICAgICAgIH07Cj4gPiAgICAgICAgICAgICAgIH07Cj4gPiAgICAgICB9Owo+ID4gZGlm
ZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvcnQzMDV4Lm1rCj4gPiBiL3Rhcmdl
dC9saW51eC9yYW1pcHMvaW1hZ2UvcnQzMDV4Lm1rCj4gPiBpbmRleCAzM2Y5NGVkZjNmLi4zMTNj
M2ZhMzE1IDEwMDY0NAo+ID4gLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9ydDMwNXgu
bWsKPiA+ICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvcnQzMDV4Lm1rCj4gPiBAQCAt
MTE0OSw3ICsxMTQ5LDcgQEAgVEFSR0VUX0RFVklDRVMgKz0gem9ybGlrX3psNTkwMHYyICBkZWZp
bmUKPiA+IERldmljZS96eXhlbF9rZWVuZXRpYwo+ID4gICAgU09DIDo9IHJ0MzA1Mgo+ID4gICAg
QkxPQ0tTSVpFIDo9IDY0awo+ID4gLSAgSU1BR0VfU0laRSA6PSAzNzc2awo+ID4gKyAgSU1BR0Vf
U0laRSA6PSA3ODcyawo+ID4gICAgREVWSUNFX1ZFTkRPUiA6PSBaeVhFTAo+ID4gICAgREVWSUNF
X01PREVMIDo9IEtlZW5ldGljCj4gPiAgICBERVZJQ0VfUEFDS0FHRVMgOj0ga21vZC11c2IyIGtt
b2QtdXNiLWVoY2kga21vZC11c2ItbGVkdHJpZy0KPiA+IHVzYnBvcnQKPiA+IC0tCj4gPiAyLjE3
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
