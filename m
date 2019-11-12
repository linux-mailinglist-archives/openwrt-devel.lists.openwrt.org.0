Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9337CF8A76
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 09:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tRz5/d4LabO0MDotcRpIG7A5sywm1KPiQtSUzlTTHU=; b=E5L7/qJ95Ui1k2
	UVth7VDyvmt1XvEOt0oOyUIrZKlVkGlhRth5ALlJeppMCyH/g1SNE9GhHkwqmKN36Qly38LZYmdF7
	bzMSt3K/neNP1IUI3RpduSEphi0PyRG1An+ZTuFunlALLhJYK2pvQvg44rsoTmhsg8gFmq9USSgKG
	M1OuF1I90Psg1lcs9SKRY2F/6/Kq93ui9+tE8waBeW0g/7qyPznn5OCyVUCh8c+VEygb4E5iXfTUY
	kXC3VWkDTOCNom1tIhf72EUOB66ItjfHMtoeXhTVzESZsue2thGb5/BX62FB7mPL3Vr5t4HcEmosC
	MobHmbG5lHdRX0Mou8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURVV-0006VU-B6; Tue, 12 Nov 2019 08:26:37 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURVM-0006Tp-Rf
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 08:26:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id v8so12048467lfa.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 00:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WRsA1Z2ej7lBcZAo5IGbUMUDDZmh4RrgV/cD4Y0WLI4=;
 b=ELr2TUBhCEcmcSh+vGtHFvGNSisC1m5QZfQdAsGAbOzqgT1Ldf610gForG3FlRpva4
 vMjRj16KeaEzCdHwRxHCcWDQBS/H08p0Mom3G1+FTFpLJBFoILFiZmRawSIGuIVMrUCS
 tvQ25DsrJiyVemnhGSfHy8oID4yNQ/fP4DY4lK6A65wC/I7FPEuDEffX3JmN6axFeH3F
 hcYQWf45RI+YCd36hk+CR1O2EDAy8vpicWjW73ZKKvw+9UYEEsvWrvGycdzwSR6MduMN
 x6WIuIB9kyex1RB4xMgquMwMSHoqnl8y2RQo/B+qhwzWBFR+8KOUy7A/SKGZg9OsOYz7
 zI4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WRsA1Z2ej7lBcZAo5IGbUMUDDZmh4RrgV/cD4Y0WLI4=;
 b=gvXC91O9+mDWqPSrBRpZ5oi0AFY+kHNy1pLHA3FqqejCOr9hLPA4QSyARU+1DjOtBy
 upFQFItHo3hXKyZgQMaG+d5TcacIF0KHM3WtI0ZWdny7FXgutY/zuO5Jy2HUSsqrMHRz
 KsIq3AgyKZw8Gh9ihOWBC3IHvUKnSEv4yZFGHZ+HEJ4HFf9ieVxVS63YMcwIJzNh23kP
 iaNTiAiLYXDvl0tL6PATZbZUosONjHZ+eOp3iTC6Q6qOsmQij3Bp0GHGy7Sx8aZi0Dze
 71R3EOfDj12DgUXJvJyC81VppufHo3jVHPjQ1e7LeDn2ybeQ59w++KlpqcmrRGkPtWnd
 iN2w==
X-Gm-Message-State: APjAAAXhxHM6qgV8xn1n3zZxNtlRowri2MmE9I39R73wlsLwBiD5Haji
 33oDAUsbQfwx5ExmWgi/Y+FTVoIlwTKIraYPILc=
X-Google-Smtp-Source: APXvYqxed/E9zG4bziMcj5UZkafN5DjLIbBWZvwft8pk4lQNcomifCLhsrSSmZDOD4XXaXHuIPv8MB4rgq9+e5wo4Q4=
X-Received: by 2002:a19:6b04:: with SMTP id d4mr18980823lfa.10.1573547186513; 
 Tue, 12 Nov 2019 00:26:26 -0800 (PST)
MIME-Version: 1.0
References: <20191112081625.27695-1-ynezz@true.cz>
In-Reply-To: <20191112081625.27695-1-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 12 Nov 2019 16:26:14 +0800
Message-ID: <CAECwjAjN3938FFjc3KJ2pQ=KP66EKD3s4RiWzW50LLZ+RiDrBQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_002628_896863_BE056049 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] build: make GCC version 6+ minimal host
 build requirement
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

T24gVHVlLCAxMiBOb3YgMjAxOSBhdCAxNjoxNiwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBDdXJyZW50bHkgbWluaW1hbCBHTlUgc3VwcG9ydGVkIEdDQyB2ZXJzaW9u
IGlzIDcgKGZyb20gTWF5IDIsIDIwMTcpLCBidWlsZGJvdHMKPiBhcmUgdXNpbmcgZGVmYXVsdCBH
Q0MgdmVyc2lvbiA2IG9uIERlYmlhbiA5IChvbGQgc3RhYmxlKSwgY3VycmVudCBEZWJpYW4KPiBz
dGFibGUgMTAgaGFzIEdDQyB2ZXJzaW9uIDguCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0
aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0tLQo+Cj4gV2hpbGUgYWRkaW5nIENJIHN1cHBvcnQgaW4g
QyBiYXNlZCBwcm9qZWN0cywgSSd2ZSBzdGFydGVkIGFkZGluZyAtV2V4dHJhIGFzCj4gd2VsbCwg
d2hpY2ggc2VlbXMgdG8gd29yayBqdXN0IGZpbmUgZm9yIGdjYzYrLCBidXQgaXQncyBhcHBhcmVu
dGx5IGNhdXNpbmcKPiBpc3N1ZXMgd2l0aCBvbGRlciBHQ0NzIGxpa2UgZm9yIGV4YW1wbGUgZ2Nj
IDQuOC41WzFdIG9uIENlbnRPUyA3Lgo+Cj4gQWx0aG91Z2ggaXQncyBjZXJ0YWlubHkgcG9zc2li
bGUgdG8gZml4IHRob3NlIGlzc3VlcyBhbmQgbWFrZSBnY2MgNCB1c2FibGUsIEkKPiB0aGluaywg
dGhhdCBpdCdzIG5vdCB3b3J0aCB0aGUgYWRkaXRpb25hbCBlZmZvcnQgYW5kIHJlc291cmNlcyBh
bnltb3JlLgo+Cj4gMS4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9jb21taXQv
NGJhOGY3YjFlZjFlNGMwNjA3MTg1YTQxYzA2YjUxOTI4YzYyNWQ4YgoKTkFLIGZyb20gbWUgOygK
Ck5vdCBxdWl0ZSBzdXJlIGhvdyBtdWNoIGJlbmVmaXQgZW5mb3JjaW5nIC1XZXh0cmEgY2FuIGJy
aW5nIHRvIHRoZQp3aG9sZSBjb2RlIGJhc2UuICBFeGNsdWRpbmcgc3VwcG9ydCBmb3IgdmFuaWxs
YSBDZW50T1M3IHdpbGwgY2VydGFpbmx5CmNhdXNlIGluY29udmVuaWVuY2UgZm9yIGxhcmdlIG51
bWJlcnMgb2YgdXNlcnMuICBUaGF0IGlzIHByb2JhYmx5IG1vcmUKc28gdG8gc2VyaW91cyBpbmR1
c3RyaWFsIHVzZXJzLgoKICAgICAgICAgICAgICAgIHlvdXNvbmcKCj4KPiAgUkVBRE1FICAgICAg
ICAgICAgICAgICAgfCAgMiArLQo+ICBpbmNsdWRlL3ByZXJlcS1idWlsZC5tayB8IDE4ICsrKyst
LS0tLS0tLS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTUgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvUkVBRE1FIGIvUkVBRE1FCj4gaW5kZXggYzg2N2Mx
ZmE0ZGE4Li42ZDExZGQxMTg4ZmYgMTAwNjQ0Cj4gLS0tIGEvUkVBRE1FCj4gKysrIGIvUkVBRE1F
Cj4gQEAgLTExLDcgKzExLDcgQEAgVG8gYnVpbGQgeW91ciBvd24gZmlybXdhcmUgeW91IG5lZWQg
YSBMaW51eCwgQlNEIG9yIE1hY09TWCBzeXN0ZW0gKGNhc2UKPiAgc2Vuc2l0aXZlIGZpbGVzeXN0
ZW0gcmVxdWlyZWQpLiBDeWd3aW4gaXMgdW5zdXBwb3J0ZWQgYmVjYXVzZSBvZiB0aGUgbGFjawo+
ICBvZiBhIGNhc2Ugc2Vuc2l0aXZlIGZpbGUgc3lzdGVtLgo+Cj4gLVlvdSBuZWVkIGdjYywgYmlu
dXRpbHMsIGJ6aXAyLCBmbGV4LCBweXRob24zLjUrLCBwZXJsLCBtYWtlLCBmaW5kLCBncmVwLCBk
aWZmLAo+ICtZb3UgbmVlZCBnY2M2KywgYmludXRpbHMsIGJ6aXAyLCBmbGV4LCBweXRob24zLjUr
LCBwZXJsLCBtYWtlLCBmaW5kLCBncmVwLCBkaWZmLAo+ICB1bnppcCwgZ2F3aywgZ2V0b3B0LCBz
dWJ2ZXJzaW9uLCBsaWJ6LWRldiBhbmQgbGliYyBoZWFkZXJzIGluc3RhbGxlZC4KPgo+ICAxLiBS
dW4gIi4vc2NyaXB0cy9mZWVkcyB1cGRhdGUgLWEiIHRvIG9idGFpbiBhbGwgdGhlIGxhdGVzdCBw
YWNrYWdlIGRlZmluaXRpb25zCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1r
IGIvaW5jbHVkZS9wcmVyZXEtYnVpbGQubWsKPiBpbmRleCA0YzU5OTEwMDU2MzQuLjU4Y2JjMDY3
OGZhMSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3ByZXJlcS1idWlsZC5tawo+ICsrKyBiL2luY2x1
ZGUvcHJlcmVxLWJ1aWxkLm1rCj4gQEAgLTI3LDEyICsyNyw3IEBAICQoZXZhbCAkKGNhbGwgVGVz
dEhvc3RDb21tYW5kLHByb3Blci11bWFzaywgXAo+ICAgICAgICAgdW1hc2sgfCBncmVwIC14RSAw
PzBbMDEyXVswMTJdKSkKPgo+ICAkKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQsZ2NjLCBc
Cj4gLSAgICAgICBQbGVhc2UgaW5zdGFsbCB0aGUgR05VIEMgQ29tcGlsZXIgKGdjYykgNC44IG9y
IGxhdGVyLCBcCj4gLSAgICAgICAkKENDKSAtZHVtcHZlcnNpb24gfCBncmVwIC1FICdeKDRcLls4
LTldfFs1LTldXC4/KScsIFwKPiAtICAgICAgIGdjYyAtZHVtcHZlcnNpb24gfCBncmVwIC1FICde
KDRcLls4LTldfFs1LTldXC4/KScsIFwKPiAtICAgICAgIGdjYzQ4IC0tdmVyc2lvbiB8IGdyZXAg
Z2NjLCBcCj4gLSAgICAgICBnY2M0OSAtLXZlcnNpb24gfCBncmVwIGdjYywgXAo+IC0gICAgICAg
Z2NjNSAtLXZlcnNpb24gfCBncmVwIGdjYywgXAo+ICsgICAgICAgUGxlYXNlIGluc3RhbGwgdGhl
IEdOVSBDIENvbXBpbGVyIChnY2MpIDYgb3IgbGF0ZXIsIFwKPiAgICAgICAgIGdjYzYgLS12ZXJz
aW9uIHwgZ3JlcCBnY2MsIFwKPiAgICAgICAgIGdjYzcgLS12ZXJzaW9uIHwgZ3JlcCBnY2MsIFwK
PiAgICAgICAgIGdjYzggLS12ZXJzaW9uIHwgZ3JlcCBnY2MsIFwKPiBAQCAtNDAsMTggKzM1LDEz
IEBAICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxnY2MsIFwKPiAgICAgICAgIGdjYyAt
LXZlcnNpb24gfCBncmVwIC1FICdBcHBsZS4oTExWTXxjbGFuZyknICkpCj4KPiAgJChldmFsICQo
Y2FsbCBUZXN0SG9zdENvbW1hbmQsd29ya2luZy1nY2MsIFwKPiAtICAgICAgIFxuUGxlYXNlIHJl
aW5zdGFsbCB0aGUgR05VIEMgQ29tcGlsZXIgKDQuOCBvciBsYXRlcikgLSBcCj4gKyAgICAgICBc
blBsZWFzZSByZWluc3RhbGwgdGhlIEdOVSBDIENvbXBpbGVyICg2IG9yIGxhdGVyKSAtIFwKPiAg
ICAgICAgIGl0IGFwcGVhcnMgdG8gYmUgYnJva2VuLCBcCj4gICAgICAgICBlY2hvICdpbnQgbWFp
bihpbnQgYXJnYywgY2hhciAqKmFyZ3YpIHsgcmV0dXJuIDA7IH0nIHwgXAo+ICAgICAgICAgICAg
ICAgICBnY2MgLXggYyAtbyAkKFRNUF9ESVIpL2Eub3V0IC0pKQo+Cj4gICQoZXZhbCAkKGNhbGwg
U2V0dXBIb3N0Q29tbWFuZCxnKyssIFwKPiAtICAgICAgIFBsZWFzZSBpbnN0YWxsIHRoZSBHTlUg
QysrIENvbXBpbGVyIChnKyspIDQuOCBvciBsYXRlciwgXAo+IC0gICAgICAgJChDWFgpIC1kdW1w
dmVyc2lvbiB8IGdyZXAgLUUgJ14oNFwuWzgtOV18WzUtOV1cLj8pJywgXAo+IC0gICAgICAgZysr
IC1kdW1wdmVyc2lvbiB8IGdyZXAgLUUgJ14oNFwuWzgtOV18WzUtOV1cLj8pJywgXAo+IC0gICAg
ICAgZysrNDggLS12ZXJzaW9uIHwgZ3JlcCBnKyssIFwKPiAtICAgICAgIGcrKzQ5IC0tdmVyc2lv
biB8IGdyZXAgZysrLCBcCj4gLSAgICAgICBnKys1IC0tdmVyc2lvbiB8IGdyZXAgZysrLCBcCj4g
KyAgICAgICBQbGVhc2UgaW5zdGFsbCB0aGUgR05VIEMrKyBDb21waWxlciAoZysrKSA2IG9yIGxh
dGVyLCBcCj4gICAgICAgICBnKys2IC0tdmVyc2lvbiB8IGdyZXAgZysrLCBcCj4gICAgICAgICBn
Kys3IC0tdmVyc2lvbiB8IGdyZXAgZysrLCBcCj4gICAgICAgICBnKys4IC0tdmVyc2lvbiB8IGdy
ZXAgZysrLCBcCj4gQEAgLTU5LDcgKzQ5LDcgQEAgJChldmFsICQoY2FsbCBTZXR1cEhvc3RDb21t
YW5kLGcrKywgXAo+ICAgICAgICAgZysrIC0tdmVyc2lvbiB8IGdyZXAgLUUgJ0FwcGxlLihMTFZN
fGNsYW5nKScgKSkKPgo+ICAkKGV2YWwgJChjYWxsIFRlc3RIb3N0Q29tbWFuZCx3b3JraW5nLWcr
KywgXAo+IC0gICAgICAgXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBHTlUgQysrIENvbXBpbGVyICg0
Ljggb3IgbGF0ZXIpIC0gXAo+ICsgICAgICAgXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBHTlUgQysr
IENvbXBpbGVyICg2IG9yIGxhdGVyKSAtIFwKPiAgICAgICAgIGl0IGFwcGVhcnMgdG8gYmUgYnJv
a2VuLCBcCj4gICAgICAgICBlY2hvICdpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpIHsg
cmV0dXJuIDA7IH0nIHwgXAo+ICAgICAgICAgICAgICAgICBnKysgLXggYysrIC1vICQoVE1QX0RJ
UikvYS5vdXQgLSAtbHN0ZGMrKyAmJiBcCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
