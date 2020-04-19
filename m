Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976F41AFB62
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 16:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OCIKLeaboYM0mZcky/0daI4ra6zLvRkzqb6j5XhWoU=; b=dEfworf2riOnKu
	YpuIjAqYJFfXISRUqsBmVwBgReThmxRkTwzAhFkqfOffga6ypuoxQgNO7D8xNjltNfXIRCAOQvzj4
	XZef5WobXdiDDnHyQLuO4pNyiNRRt2QlNeZKoqUK+EuoNStBMBE2ZHj48JwmItd+o7j3nmfGr7JH8
	uMmLXO62ZGAt2jIUUGpCjs8A78dIAwJhRf06hdo1YdCdjRudlGnUl1yWVnq1L9m4pP3EYGDn07B8m
	Jy9ZZwBYATmFoEW+NaXu2khecyUkY+4BovCwDBSA2zu9P5bsnqNlsF3Zmx/WmugKPw2mGOnOdz9Th
	BeIFK4chEwe1hAP4k8ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAps-0005FP-BG; Sun, 19 Apr 2020 14:22:16 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQApl-0005F1-IH
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 14:22:11 +0000
Received: by mail-qk1-x742.google.com with SMTP id s63so7781952qke.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 07:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aM3VHqK9vbpYVCl/0/Pqna+WOrF5/PdaBBhrqCchOwM=;
 b=i+o7Z2+oA1qK9FBXV05RFZkAa80dR0mIkxx1Gnwnt3aOSSaHNSs+Itkox1WqRrC3zE
 zvpMG+MrSc/AJR6+2W8UImwWn6Z+IoizF4u30oP6JPVCTq5Tm+tcokLs/9Y3XemOvdsh
 pbG+uDwBLc3y5cI+LtWTIqxNK+oUkuylJA/GdX+OzIcBiUj8kiVXePscrqk1I3uZMaLZ
 R7q5FVUNrzjR7+BYSdRD3evu6H9iVv/flWUOiXxcJyDlafPwUEzO2EXVn3vJeEdHCoEV
 Hy9IZ1Wxe5O2zCWhOGDitTZnPaUj1smABCAP8sjRvgjy8RGQDKhHBEhgk7iKWt+oyuiP
 BRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aM3VHqK9vbpYVCl/0/Pqna+WOrF5/PdaBBhrqCchOwM=;
 b=O928wQOQFw9q+HSPr+SP9Xu6azBGAGr6kC6I85TbFiRSjj17LCtx+Ji1G5/9NsSkDq
 edJnE0Nqy/k5xk01J50lNPtrHAGo7W4bMzHDV0V1agVu5uxvFE+zQMdb6g+tCbdAG4kK
 ut4OmyWf9fBN5Hc52PTORzzhmKuxMn0kqZDdnArBfgNXuDQbj+j7iZExsKEg0UGDOxgK
 cfvG0JfmMZcMCejm54f51e3FxcijzHzFPrgmnNQ3rRpO1BgNShU1jMEA8uC0dcbXfqji
 6dfFeewAJOsEldPGRNlHagpnAiqbOdtqXZglPgLhM1rkUyqNwBpXNZoToOdApHyrTyas
 csNA==
X-Gm-Message-State: AGi0PuaZz8EbMt2Y2429J65Be8CtCCD8v38EXjxRx0MgFSCuMKH1CVGX
 5IlP2fu22GoGE6yRKs/pDyXicRd0GdesRvep448=
X-Google-Smtp-Source: APiQypIlx+a/yRJH3rfWxUIHMGpLc0o7bCsQS1RLQqqdx3w20VNS6zc7iU7Ji/GZWnUIUrP72zZRUhqigIz2/I24keM=
X-Received: by 2002:a37:a38b:: with SMTP id
 m133mr11816418qke.434.1587306128218; 
 Sun, 19 Apr 2020 07:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200416153146.4377-1-szab.hu@gmail.com>
 <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419003715.26284-3-szab.hu@gmail.com>
 <00b001d61647$a5d0ec30$f172c490$@adrianschmutzler.de>
In-Reply-To: <00b001d61647$a5d0ec30$f172c490$@adrianschmutzler.de>
From: Szabolcs Hubai <szab.hu@gmail.com>
Date: Sun, 19 Apr 2020 16:21:57 +0200
Message-ID: <CAOZt9c9fY9cr-h+fy3wxN1nkNMSTjFWz4PDA-xAMU0MWLeNYuA@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_072209_605706_299A00DD 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L
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

PG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gZXp0IMOtcnRhIChpZMWRcG9udDogMjAyMC4gw6Fw
ci4gMTkuLCBWLCAxNDo0MCk6Cj4KPiBIaSwKPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPiA+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0bzpvcGVud3J0LWRldmVsLWJvdW5jZXNA
bGlzdHMub3BlbndydC5vcmddCj4gPiBPbiBCZWhhbGYgT2YgU3phYm9sY3MgSHViYWkKPiA+IFNl
bnQ6IFNvbm50YWcsIDE5LiBBcHJpbCAyMDIwIDAyOjM3Cj4gPiBUbzogb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwo+ID4gQ2M6IFN6YWJvbGNzIEh1YmFpIDxzemFiLmh1QGdtYWlsLmNv
bT4KPiA+IFN1YmplY3Q6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0ggMi8yXSByYW1pcHM6IG10NzYy
MTogdXNlIGx6bWEtbG9hZGVyIGZvcgo+ID4gRC1MaW5rIERJUi04NjBMCj4gPgo+ID4gVGhpcyBk
ZXZpY2UgaGFzIHRyb3VibGUgZXh0cmFjdGluZyBiaWcga2VybmVsIGZyb20gZmxhc2gsIGFuZCBz
dXBwb3J0cyBMWk1BCj4gPiBjb21wcmVzc2VkIGtlcm5lbHMgb25seS4KPiA+Cj4gPiBVc2luZyBP
cGVuV3J0IGtlcm5lbCBsb2FkZXIgc2F2ZXMgdXMgNjQgS0IgY29tcGFyZWQgdG8gdGhlIGRpY3Rp
b25hcnkgc2l6ZQo+ID4gbGltaXRpbmcgd29ya2Fyb3VuZC4KPiA+Cj4gPiBGYWN0b3J5IGltYWdl
IHNpemVzIChjb21taXQ6IDVmMTI2YzU0MWE3NCkgd2l0aCAiQ09ORklHX0FMTF9LTU9EUz15IjoK
PiA+IC0gb3JpZ2luYWwgKCItZDIzIiwgZGVmYXVsdCk6IDQ3ODQxODggYnl0ZXMsIExaTUEgRVJS
T1IgMQo+ID4gLSB3aXRoICItZDE5IjogNDkxNTI2MCwgTFpNQSBFUlJPUiAxCj4gPiAtIHdpdGgg
Ii1kMTgiOiA0OTE1MjYwLCBkaWZmIHRvIG9yaWdpbmFsOiArMTI4IEtCCj4gPiAtIHdpdGggIi1k
MTciOiA0OTgwNzk2LCBkaWZmIHRvIG9yaWdpbmFsOiArMTkyIEtCCj4gPiAtIHdpdGggdGhpcyBw
YXRjaDogNDg0OTcyNCwgZGlmZiB0byBvcmlnaW5hbDogKzY0IEtCCj4gPgo+ID4gVG8gc2F2ZSBz
b21lIENQVSBjeWNsZSwgdXNlIG1pbmltYWwgY29tcHJlc3Npb24gKCItYTAiKSBmb3IgdGhlIExa
TUEKPiA+IGNvbXByZXNzZWQgdUltYWdlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFN6YWJvbGNz
IEh1YmFpIDxzemFiLmh1QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIHRhcmdldC9saW51eC9yYW1p
cHMvaW1hZ2UvbXQ3NjIxLm1rIHwgMyArKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9y
YW1pcHMvaW1hZ2UvbXQ3NjIxLm1rCj4gPiBiL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3
NjIxLm1rCj4gPiBpbmRleCBhYTY4MzZkNTBhLi4yOGQyNjM3YmQzIDEwMDY0NAo+ID4gLS0tIGEv
dGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjEubWsKPiA+ICsrKyBiL3RhcmdldC9saW51
eC9yYW1pcHMvaW1hZ2UvbXQ3NjIxLm1rCj4gPiBAQCAtMjE2LDkgKzIxNiwxMCBAQCBUQVJHRVRf
REVWSUNFUyArPSBidWZmYWxvX3dzci02MDBkaHAKPiA+Cj4gPiAgZGVmaW5lIERldmljZS9kbGlu
a19kaXItODYwbC1iMQo+ID4gICAgJChEZXZpY2Uvc2VhbWEpCj4gPiArICAkKERldmljZS9sem1h
LWxvYWRlcikKPgo+IEkgZG8gbm90IHJlYWxseSBzZWUgdGhlIGJlbmVmaXQgb2YgaGF2aW5nIHRo
aXMgZGVmaW5pdGlvbiBpZiB5b3UgaGF2ZSB0byBtb2RpZnkgaXQgYmVsb3cgYW55d2F5Lgo+IEhh
dmluZyBzZWVuIHRoaXMsIEknZCBwcmVmZXIgdG8gZHJvcCBwYXRjaCAxLzIgZW50aXJlbHkgYW5k
IGp1c3QgYWRkIHRoZSBuZWNlc3NhcnkgYWRqdXN0bWVudHMgZGlyZWN0bHkgdG8gdGhpcyBwYXJ0
aWN1bGFyIGRldmljZToKPgo+IExPQURFUl9UWVBFIDo9IGJpbgo+IEtFUk5FTCA6PSBrZXJuZWwt
YmluIHwgYXBwZW5kLWR0YiB8IGx6bWEgfCBsb2FkZXIta2VybmVsIHwgcmVsb2NhdGUta2VybmVs
IHwgbHptYSAtYTAgfCB1SW1hZ2UgbHptYQo+IChwcm9wZXJseSB3cmFwcGVkIG9mIGNvdXJzZSkK
Pgo+IElmIHdlIGhhdmUgZml2ZSBkZXZpY2VzIGxpa2UgdGhpcyBhdCBzb21lIHBvaW50LCBJJ2xs
IGJlIGhhcHB5IHRvIGRpc2N1c3MgaG93IHdlIGNhbiBjcmVhdGUgYSBzaGFyZWQgcmVjaXBlLgo+
Cj4gQmVzdAo+Cj4gQWRyaWFuCj4KCkFzIGEgbmV3Y29tZXIgaXQgdG9vayBtZSBkYXlzIHRvIGxl
YXZlIHRoZSAiS0VSTkVMX0RUQiArPSAtZDIxIiBsaW5lCmFsb25lIHdoaWxlIGRlYnVnZ2luZyB0
aGlzIExaTUEgRVJST1Igb24gdGhpcyBkZXZpY2UuCldpdGggdGhlIG5ldyByZWNpcGUgSSB3YW50
ZWQgdG8gZW1waGFzaXplIHRoYXQgRC1MaW5rIERJUi04NjBMIGFsc28KdXNlcyB0aGUga2VybmVs
IGxvYWRlciBtZXRob2QsIGJ1dCBpdCBuZWVkcyBtb3JlIG1hZ2ljIHRvIGNvbXBsZXRlIHRoZQp3
b3JrYXJvdW5kLgoKU3VyZSwgdGhhdCBvbmUgcHJvcGVybHkgd3JhcHBlZCBsaW5lIHNob3VsZCBh
bHNvIGZpeCB0aGUgc25hcHNob3QgaW1hZ2VzLApidXQgSSB0aGluayBjcmVhdGluZyBhbmQgcmV1
c2luZyB0aGF0IG5ldyByZWNpcGUgaGFzIHRoZSBhZGRlZCB2YWx1ZS4KCgpJIGxpa2UgdGhlIG5l
dyByZWNpcGUgYmV0dGVyLCBidXQgSSdtIE9LIHdpdGggdGhlIG9uZS1saW5lciwgaWYgeW91CnRo
aW5rIHRoYXQgdGhlIG5ldyByZWNpcGUgaXMgb3ZlcmtpbGwgZm9yIHRoaXMgZml4LgoKLS0KU3ph
Ym9sY3MKCgoKPiA+ICAgIEJMT0NLU0laRSA6PSA2NGsKPiA+ICAgIFNFQU1BX1NJR05BVFVSRSA6
PSB3cmdhYzEzX2RsaW5rLjIwMTNndWlfZGlyODYwbGIKPiA+IC0gIEtFUk5FTCA6PSBrZXJuZWwt
YmluIHwgYXBwZW5kLWR0YiB8IHJlbG9jYXRlLWtlcm5lbCB8IGx6bWEgfCB1SW1hZ2UgbHptYQo+
ID4gKyAgS0VSTkVMICs9IHwgcmVsb2NhdGUta2VybmVsIHwgbHptYSAtYTAgfCB1SW1hZ2UgbHpt
YQo+ID4gICAgSU1BR0VfU0laRSA6PSAxNjA2NGsKPiA+ICAgIERFVklDRV9WRU5ET1IgOj0gRC1M
aW5rCj4gPiAgICBERVZJQ0VfTU9ERUwgOj0gRElSLTg2MEwKPiA+IC0tCj4gPiAyLjE3LjEKPiA+
Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCj4gPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
