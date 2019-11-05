Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F35BEF515
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 06:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzl+xs9yt8UyTX0ImlBiaDmIlA686/s2RWmoC5uFqfM=; b=F348XK9RIWvi3i
	9jDtyitLNAjlJusbIeI0dXWy8RPwymb84quvQyas9/AeU/2SaGV1hOX69BaoUXsqIIq1KzjGGYqkW
	c8d2zXCkPBvOshfVdp91ipbbnByIRpBdTEbLQrYSEOpDA+qGrhLtth7e9R2exspg/0UJIhEeP/LIK
	ZiEVXEYf1KTF2431w+4EP3DOxKRCIU3RlY7Ruzo55tKPIDsggAPvl+UEmNS28hk9+jcddVCDkeF0S
	qXOko3+xRokNuf+nhzxWNIKWyg/JQZLhyqmy4UVEURB8wD0xa+AcgREzjjnYWGjJkbYUu5m2d7ER3
	gjp0/piHpKz+G/c5rX+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRrcj-0006Vj-CS; Tue, 05 Nov 2019 05:43:25 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRrcd-0006Uo-LY
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 05:43:21 +0000
Received: by mail-ot1-x341.google.com with SMTP id c19so502617otr.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 21:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x4KDVwi7e81J+2WJw1FprsOAaU9LSEK/DEwAZBsWa2E=;
 b=oSNTUgw2ssdBQ9EetYag2hoXzTv+qOARSXv/KKMJmExA9xMKFJhXGK/Ou+eTItHOGO
 VwBuliPGugKez3PhJdGrwm49l1u+X9TlCXoyxt/kcWyp36Y2nFwitp1tXQNcxb92pGKf
 k/Nn6xmqG5DUq8EuIlX4zpcvZTNtAyGjtBu2LsppFP0maCG61S1eBiBzdNlF/nPzIxrf
 XDXZ5x/PQ9YUhxP/PfpwPuaeYfe6aRQbvSpeAUXL2v0iCiUCSTve3gZ5ADR6IW8uTB0f
 FJXG9rxUfu2F/3xisiwvh6wTa6ilNtzmqB5kWB30RlABsfnBWkA57MrnQpu60R/sf2b8
 b2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x4KDVwi7e81J+2WJw1FprsOAaU9LSEK/DEwAZBsWa2E=;
 b=W5zspZrxY7pWoOoyo+WB3gx3t7JSL9AuvlCQpj0g4gutmF8cg/FuVNb6+RivGbvfIq
 cOiyCEHyFbbgWKAJoWrFdhKz0UsGvQNce8J0af7OAYPwscpN9fN3s2NYStNC1uBmeYJX
 Jgkr7N2cBTkcYXcrOPb8xqaUrw5Gnd4d7Mmb2K0w64b0rKcv6qF5pN0NxPY1QWGGKuKF
 HvMLmYWpwMp/H4KN3sy/u4n6wcOFmSrfoCfmrsTjHreSKUQZrn/dGVaHPtdZXYz5bz7Q
 0NS6ducVamrB2IikhV/mQpIncKoEragT/kna1M+x6Mqy3e8i6VZ6PeVAWoGH2Gvm6dYg
 TjFg==
X-Gm-Message-State: APjAAAWNcJnV1HksevmMdiZQj10vJd6Qo4IfZ4gtvYcRSdxwWTadnX2O
 D6R6fyk3hWFiDm0oXmL+XzkNqIvDmGUvkPPNsP0xir7D
X-Google-Smtp-Source: APXvYqxOgHD8dqugKkXV8x9LimRpMzEFa+igVqdFJ5zd/rnx6wISqICWX904C8Cq3UGOE2pi6AwmsnFxfhcaA5RYeIs=
X-Received: by 2002:a05:6830:1149:: with SMTP id
 x9mr10988196otq.47.1572932594807; 
 Mon, 04 Nov 2019 21:43:14 -0800 (PST)
MIME-Version: 1.0
References: <20191105003657.16540-1-ynezz@true.cz>
 <20191105003657.16540-19-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-19-ynezz@true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 4 Nov 2019 21:43:03 -0800
Message-ID: <CAKxU2N-TTd6rL0yuvBFjyFjy3JvZwn8hmK0OeW5udPkdAJFfaw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_214319_729977_912B47C6 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH uci 18/18] lua: fix error handling
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

T24gTW9uLCBOb3YgNCwgMjAxOSBhdCA0OjQwIFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+Cj4gc2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBoYXMgcmVwb3J0
ZWQgZm9sbG93aW5nIGlzc3VlczoKTm90ZSB0aGF0IENNYWtlIGhhcyBpbnRlZ3JhdGVkIGNsYW5n
LXRpZHkgc3VwcG9ydC4gSXQgc3VwcG9ydHMgYWxsIHRoZQpjbGFuZy1hbmFseXplciBzdHVmZiBh
bmQgbW9yZS4KPgo+ICB1Y2kuYzozODk6Mzogd2FybmluZzogVmFsdWUgc3RvcmVkIHRvICdlcnIn
IGlzIG5ldmVyIHJlYWQKPiAgICAgICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsKPiAg
ICAgICAgICAgICAgICAgXiAgICAgfn5+fn5+fn5+fn5+fgo+ICB1Y2kuYzozOTM6Mzogd2Fybmlu
ZzogVmFsdWUgc3RvcmVkIHRvICdlcnInIGlzIG5ldmVyIHJlYWQKPiAgICAgICAgICAgICAgICAg
ZXJyID0gVUNJX0VSUl9OT1RGT1VORDsKPiAgICAgICAgICAgICAgICAgXiAgICAgfn5+fn5+fn5+
fn5+fn5+fgo+ICB1Y2kuYzo0MTc6NDogd2FybmluZzogVmFsdWUgc3RvcmVkIHRvICdlcnInIGlz
IG5ldmVyIHJlYWQKPiAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBVQ0lfRVJSX0lOVkFM
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIF4gICAgIH5+fn5+fn5+fn5+fn4KPiAgdWNpLmM6
NTI0OjM6IHdhcm5pbmc6IFZhbHVlIHN0b3JlZCB0byAnZXJyJyBpcyBuZXZlciByZWFkCj4gICAg
ICAgICAgICAgICAgIGVyciA9IFVDSV9FUlJfSU5WQUw7Cj4gICAgICAgICAgICAgICAgIF4gICAg
IH5+fn5+fn5+fn5+fn4KPiAgdWNpLmM6NTMzOjM6IHdhcm5pbmc6IFZhbHVlIHN0b3JlZCB0byAn
ZXJyJyBpcyBuZXZlciByZWFkCj4gICAgICAgICAgICAgICAgIGVyciA9IFVDSV9FUlJfSU5WQUw7
Cj4gICAgICAgICAgICAgICAgIF4gICAgIH5+fn5+fn5+fn5+fn4KPiAgdWNpLmM6NTY1OjQ6IHdh
cm5pbmc6IFZhbHVlIHN0b3JlZCB0byAnZXJyJyBpcyBuZXZlciByZWFkCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBeICAgICB+fn5+fn5+fn5+fn5+Cj4gIHVjaS5jOjU3NTozOiB3YXJuaW5nOiBWYWx1ZSBzdG9y
ZWQgdG8gJ2VycicgaXMgbmV2ZXIgcmVhZAo+ICAgICAgICAgICAgICAgICBlcnIgPSBVQ0lfRVJS
X0lOVkFMOwo+ICAgICAgICAgICAgICAgICBeICAgICB+fn5+fn5+fn5+fn5+Cj4gIHVjaS5jOjU4
NDozOiB3YXJuaW5nOiBWYWx1ZSBzdG9yZWQgdG8gJ2VycicgaXMgbmV2ZXIgcmVhZAo+ICAgICAg
ICAgICAgICAgICBlcnIgPSBVQ0lfRVJSX0lOVkFMOwo+ICAgICAgICAgICAgICAgICBeICAgICB+
fn5+fn5+fn5+fn5+Cj4gIHVjaS5jOjY0MjozOiB3YXJuaW5nOiBWYWx1ZSBzdG9yZWQgdG8gJ2Vy
cicgaXMgbmV2ZXIgcmVhZAo+ICAgICAgICAgICAgICAgICBlcnIgPSBVQ0lfRVJSX0lOVkFMOwo+
ICAgICAgICAgICAgICAgICBeICAgICB+fn5+fn5+fn5+fn5+Cj4gIHVjaS5jOjY1MTozOiB3YXJu
aW5nOiBWYWx1ZSBzdG9yZWQgdG8gJ2VycicgaXMgbmV2ZXIgcmVhZAo+ICAgICAgICAgICAgICAg
ICBlcnIgPSBVQ0lfRVJSX0lOVkFMOwo+ICAgICAgICAgICAgICAgICBeICAgICB+fn5+fn5+fn5+
fn5+Cj4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0t
LQo+ICBsdWEvdWNpLmMgfCAyMCArKysrKysrKysrLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvbHVh
L3VjaS5jIGIvbHVhL3VjaS5jCj4gaW5kZXggYTdhYWFkMzc1YzIwLi4xZWQ3M2U0ZjY3ZGMgMTAw
NjQ0Cj4gLS0tIGEvbHVhL3VjaS5jCj4gKysrIGIvbHVhL3VjaS5jCj4gQEAgLTM4NiwxMSArMzg2
LDExIEBAIHVjaV9sdWFfZ2V0X2FueShsdWFfU3RhdGUgKkwsIGJvb2wgYWxsKQo+Cj4gICAgICAg
ICBsb29rdXBfcHRyKGN0eCwgJnB0ciwgTlVMTCwgdHJ1ZSk7Cj4gICAgICAgICBpZiAoIWFsbCAm
JiAhcHRyLnMpIHsKPiAtICAgICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsKPiArICAg
ICAgICAgICAgICAgY3R4LT5lcnIgPSBVQ0lfRVJSX0lOVkFMOwo+ICAgICAgICAgICAgICAgICBn
b3RvIGVycm9yOwo+ICAgICAgICAgfQo+ICAgICAgICAgaWYgKCEocHRyLmZsYWdzICYgVUNJX0xP
T0tVUF9DT01QTEVURSkpIHsKPiAtICAgICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9OT1RGT1VO
RDsKPiArICAgICAgICAgICAgICAgY3R4LT5lcnIgPSBVQ0lfRVJSX05PVEZPVU5EOwo+ICAgICAg
ICAgICAgICAgICBnb3RvIGVycm9yOwo+ICAgICAgICAgfQo+Cj4gQEAgLTQxNCw3ICs0MTQsNyBA
QCB1Y2lfbHVhX2dldF9hbnkobHVhX1N0YXRlICpMLCBib29sIGFsbCkKPiAgICAgICAgICAgICAg
ICAgICAgICAgICB1Y2lfcHVzaF9vcHRpb24oTCwgcHRyLm8pOwo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGJyZWFrOwo+ICAgICAgICAgICAgICAgICBkZWZhdWx0Ogo+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGVyciA9IFVDSV9FUlJfSU5WQUw7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
Y3R4LT5lcnIgPSBVQ0lfRVJSX0lOVkFMOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8g
ZXJyb3I7Cj4gICAgICAgICB9Cj4gICAgICAgICBpZiAocykKPiBAQCAtNTIxLDcgKzUyMSw3IEBA
IHVjaV9sdWFfcmVuYW1lKGx1YV9TdGF0ZSAqTCkKPiAgICAgICAgICAgICAgICAgcHRyLm9wdGlv
biA9IE5VTEw7Cj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgZGVmYXVsdDoKPiAt
ICAgICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsKPiArICAgICAgICAgICAgICAgY3R4
LT5lcnIgPSBVQ0lfRVJSX0lOVkFMOwo+ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+ICAg
ICAgICAgfQo+Cj4gQEAgLTUzMCw3ICs1MzAsNyBAQCB1Y2lfbHVhX3JlbmFtZShsdWFfU3RhdGUg
KkwpCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyb3I7Cj4KPiAgICAgICAgIGlmICgoKHB0ci5z
ID09IE5VTEwpICYmIChwdHIub3B0aW9uICE9IE5VTEwpKSB8fCAocHRyLnZhbHVlID09IE5VTEwp
KSB7Cj4gLSAgICAgICAgICAgICAgIGVyciA9IFVDSV9FUlJfSU5WQUw7Cj4gKyAgICAgICAgICAg
ICAgIGN0eC0+ZXJyID0gVUNJX0VSUl9JTlZBTDsKPiAgICAgICAgICAgICAgICAgZ290byBlcnJv
cjsKPiAgICAgICAgIH0KPgo+IEBAIC01NjIsNyArNTYyLDcgQEAgdWNpX2x1YV9yZW9yZGVyKGx1
YV9TdGF0ZSAqTCkKPiAgICAgICAgIGNhc2UgMToKPiAgICAgICAgICAgICAgICAgLyogRm9ybWF0
OiB1Y2kuc2V0KCJwLnM9diIpIG9yIHVjaS5zZXQoInAucz12IikgKi8KPiAgICAgICAgICAgICAg
ICAgaWYgKHB0ci5vcHRpb24pIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBVQ0lf
RVJSX0lOVkFMOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGN0eC0+ZXJyID0gVUNJX0VSUl9J
TlZBTDsKPiAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+ICAgICAgICAgICAg
ICAgICB9Cj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+IEBAIC01NzIsNyArNTcyLDcgQEAgdWNp
X2x1YV9yZW9yZGVyKGx1YV9TdGF0ZSAqTCkKPiAgICAgICAgICAgICAgICAgcHRyLm9wdGlvbiA9
IE5VTEw7Cj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgZGVmYXVsdDoKPiAtICAg
ICAgICAgICAgICAgZXJyID0gVUNJX0VSUl9JTlZBTDsKPiArICAgICAgICAgICAgICAgY3R4LT5l
cnIgPSBVQ0lfRVJSX0lOVkFMOwo+ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+ICAgICAg
ICAgfQo+Cj4gQEAgLTU4MSw3ICs1ODEsNyBAQCB1Y2lfbHVhX3Jlb3JkZXIobHVhX1N0YXRlICpM
KQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+Cj4gICAgICAgICBpZiAoKHB0ci5zID09
IE5VTEwpIHx8IChwdHIudmFsdWUgPT0gTlVMTCkpIHsKPiAtICAgICAgICAgICAgICAgZXJyID0g
VUNJX0VSUl9JTlZBTDsKPiArICAgICAgICAgICAgICAgY3R4LT5lcnIgPSBVQ0lfRVJSX0lOVkFM
Owo+ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+ICAgICAgICAgfQo+Cj4gQEAgLTYzOSw3
ICs2MzksNyBAQCB1Y2lfbHVhX3NldChsdWFfU3RhdGUgKkwpCj4gICAgICAgICAgICAgICAgIHB0
ci5vcHRpb24gPSBOVUxMOwo+ICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgIGRlZmF1
bHQ6Cj4gLSAgICAgICAgICAgICAgIGVyciA9IFVDSV9FUlJfSU5WQUw7Cj4gKyAgICAgICAgICAg
ICAgIGN0eC0+ZXJyID0gVUNJX0VSUl9JTlZBTDsKPiAgICAgICAgICAgICAgICAgZ290byBlcnJv
cjsKPiAgICAgICAgIH0KPgo+IEBAIC02NDgsNyArNjQ4LDcgQEAgdWNpX2x1YV9zZXQobHVhX1N0
YXRlICpMKQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+Cj4gICAgICAgICBpZiAoKChw
dHIucyA9PSBOVUxMKSAmJiAocHRyLm9wdGlvbiAhPSBOVUxMKSkgfHwgKHB0ci52YWx1ZSA9PSBO
VUxMKSkgewo+IC0gICAgICAgICAgICAgICBlcnIgPSBVQ0lfRVJSX0lOVkFMOwo+ICsgICAgICAg
ICAgICAgICBjdHgtPmVyciA9IFVDSV9FUlJfSU5WQUw7Cj4gICAgICAgICAgICAgICAgIGdvdG8g
ZXJyb3I7Cj4gICAgICAgICB9Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
