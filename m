Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370824B6F7
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 13:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUFukTF2jdPn5Uk3k2KWbLcJsiAEqHlUD0nfaktORvM=; b=DzX5DhCqbb7P0v
	eT9PBs5HkYTCXYiVK1hUglbG0bD4waZ7rcWm8MWdDPnRL8gjoAnN7+8nkSPhl1m2WMUtGnovo24Gu
	oBmY5KhgD2XgAdStXQ4OEWqXl96Yhhd6XdLVUOj22OZPG/XMzgVi+/BHyoOJZPMbmIFTwiHmgv0Ve
	cLFO2xx/zkt3dWqHY0d2arJhqEffppjppbR7gUgI0raamjIl3kYxrnCTh01lXbP3pjHYcjbo+I5aK
	wO9PCbDne11qfNMCbTS19RBkdoq53vYO+T6PjxSQDyGpGsUXdvQUlGm7gTG+5lcZ4sX71O6UXXcBb
	i4VdggV8rbeMo7EhHtuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYg4-0005iI-K0; Wed, 19 Jun 2019 11:22:56 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYft-0005hk-OX
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 11:22:47 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so11778804lfh.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 04:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fDLk0hb32mTLFLEwwroHRbiE5Xjntt5hShIB2X0la6g=;
 b=pLWUxUkHGq1OFMc8c4hMrFQja8HPx9aoyQjAemY76rS6Zwzz55+Y8Hwtni3G50QeVi
 sEef8MHN8xLtUCEYljbUBxHvUmhuCaoSaa4IwRq7tTZlqz3VmBN0SgvupC0H0Y46ZyJe
 WCEwGOUXU/V9XI9DCPYpDv8qGG38KGyXgLBt9ia8AF/wNjwKkMJ+uY/iR4CubKIqS6Q0
 amiGuZdtxIsJNZDVQytrzvobTD42QTkchV2dO/P4OF5GJ7foXiGGXjZwwspwGr94Etme
 CFYTXjIBJrhhg1NLlO3FUfznmlTDQfIvyoHdcc0GveNZgZDf+itC93zbyBwFt4GrgGPJ
 39aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fDLk0hb32mTLFLEwwroHRbiE5Xjntt5hShIB2X0la6g=;
 b=j/IooAUA9gB1hGsUrBAwfUl6uUUsNCWuUWZqQkTM56iAvQicVZWkh9jH6A9DjC20H4
 McvouUT9jJvnhmE3IoeL28jeGUGFHuSw3OhnzXzCkZJo0d88WU6PG/9cf1d8jh0JxL6i
 ReWojAByGXyfcV8ANRB8bk4nFqRi/dTAEcL2nH4M0vNn3tLB0eZ4SH0rGg83Zed1mSGM
 +0y51PFvXRqc/0kRK8h8cifp1TfGNKSyhoIzUw961OV3nWq6R5F/F0/HYupgcmrl3WP/
 FuBUk2w5aZXDNei8i8xQysTb5gwH2QsKPu1H4+7+EOdMBUFq2gpdyhutOLpz9XAjHo7m
 fSeA==
X-Gm-Message-State: APjAAAVZkHnhiUz5Q18YhvYV5tWq0o6nvRtsUp8YoipDX4H7MLL8G7t+
 xYZBrqC1e2pURuCZwTRVMIz4d6of9VCnRh9Nrbvy0UNIQEM=
X-Google-Smtp-Source: APXvYqzEiN4hlotGi40I4kRClqjc22I+p4N/okJZSGsLi6FuH4r7NKRzfdytQdeIjFfQe0QD5ace+Yc1V60iKtKaXw8=
X-Received: by 2002:ac2:44b1:: with SMTP id c17mr13896319lfm.87.1560943361792; 
 Wed, 19 Jun 2019 04:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
 <1560802136-4157-2-git-send-email-ynezz@true.cz>
In-Reply-To: <1560802136-4157-2-git-send-email-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 19 Jun 2019 19:22:30 +0800
Message-ID: <CAECwjAjTQ8zZVcFFGaKh5iwGOT47UK0syqY=jEvYAT0igWGn1A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_042245_810608_E43A2415 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] tools/b43-tools/b43-fwsquash:
 convert to Python 3 with 2-to-3
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

T24gVHVlLCAxOCBKdW4gMjAxOSBhdCAwNDowOSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBMZXQncyBjb252ZXJ0IHRoZSBzY3JpcHQgdG8gUHl0aG9uIDMuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0tLQo+ICB0b29s
cy9iNDMtdG9vbHMvZmlsZXMvYjQzLWZ3c3F1YXNoLnB5IHwgMTYgKysrKysrKystLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL3Rvb2xzL2I0My10b29scy9maWxlcy9iNDMtZndzcXVhc2gucHkgYi90b29scy9i
NDMtdG9vbHMvZmlsZXMvYjQzLWZ3c3F1YXNoLnB5Cj4gaW5kZXggMjk0NmQ3YzNjMzI0Li41ZDk1
NWI5ZDljM2UgMTAwNzU1Cj4gLS0tIGEvdG9vbHMvYjQzLXRvb2xzL2ZpbGVzL2I0My1md3NxdWFz
aC5weQo+ICsrKyBiL3Rvb2xzL2I0My10b29scy9maWxlcy9iNDMtZndzcXVhc2gucHkKPiBAQCAt
MSw0ICsxLDQgQEAKPiAtIyEvdXNyL2Jpbi9lbnYgcHl0aG9uCj4gKyMhL3Vzci9iaW4vZW52IHB5
dGhvbjMKPiAgIwo+ICAjIGI0MyBmaXJtd2FyZSBmaWxlIHNxdWFzaGVyCj4gICMgUmVtb3ZlcyB1
bm5lY2Vzc2FyeSBmaXJtd2FyZSBmaWxlcwo+IEBAIC0xMiw3ICsxMiw3IEBAIGltcG9ydCBzeXMK
PiAgaW1wb3J0IG9zCj4KPiAgZGVmIHVzYWdlKCk6Cj4gLSAgICAgICBwcmludCgiVXNhZ2U6ICVz
IFBIWVRZUEVTIENPUkVSRVZTIC9wYXRoL3RvL2V4dHJhY3RlZC9maXJtd2FyZSIgJSBzeXMuYXJn
dlswXSkKPiArICAgICAgIHByaW50KCgiVXNhZ2U6ICVzIFBIWVRZUEVTIENPUkVSRVZTIC9wYXRo
L3RvL2V4dHJhY3RlZC9maXJtd2FyZSIgJSBzeXMuYXJndlswXSkpCgpXYXMgdGhlIHBhcmVudGhl
c2VzIGFkZGVkIGJ5IHNjcmlwdD8gIE9uZSBwYWlyIHdpbGwgZG8KClJlZ2FyZHMsCiAgICAgICAg
ICAgICAgICB5b3Vzb25nCgo+ICAgICAgICAgcHJpbnQoIiIpCj4gICAgICAgICBwcmludCgiUEhZ
VFlQRVMgaXMgYSBjb21tYSBzZXBhcmF0ZWQgbGlzdCBvZjoiKQo+ICAgICAgICAgcHJpbnQoIkEg
ICAgICAgICA9PiBBLVBIWSIpCj4gQEAgLTM3LDE3ICszNywxNyBAQCBmd3BhdGggPSBzeXMuYXJn
dlszXQo+Cj4gIHBoeXR5cGVzID0gcGh5dHlwZXMuc3BsaXQoJywnKQo+ICB0cnk6Cj4gLSAgICAg
ICBjb3JlcmV2cyA9IG1hcChsYW1iZGEgcjogaW50KHIpLCBjb3JlcmV2cy5zcGxpdCgnLCcpKQo+
ICsgICAgICAgY29yZXJldnMgPSBbaW50KHIpIGZvciByIGluIGNvcmVyZXZzLnNwbGl0KCcsJyld
Cj4gIGV4Y2VwdCBWYWx1ZUVycm9yOgo+IC0gICAgICAgcHJpbnQoIkVSUk9SOiBcIiVzXCIgaXMg
bm90IGEgdmFsaWQgQ09SRVJFVlMgc3RyaW5nXG4iICUgY29yZXJldnMpCj4gKyAgICAgICBwcmlu
dCgoIkVSUk9SOiBcIiVzXCIgaXMgbm90IGEgdmFsaWQgQ09SRVJFVlMgc3RyaW5nXG4iICUgY29y
ZXJldnMpKQo+ICAgICAgICAgdXNhZ2UoKQo+ICAgICAgICAgc3lzLmV4aXQoMSkKPgo+Cj4gIGZ3
ZmlsZXMgPSBvcy5saXN0ZGlyKGZ3cGF0aCkKPiAtZndmaWxlcyA9IGZpbHRlcihsYW1iZGEgc3Ry
OiBzdHIuZW5kc3dpdGgoIi5mdyIpLCBmd2ZpbGVzKQo+ICtmd2ZpbGVzID0gW3N0ciBmb3Igc3Ry
IGluIGZ3ZmlsZXMgaWYgc3RyLmVuZHN3aXRoKCIuZnciKV0KPiAgaWYgbm90IGZ3ZmlsZXM6Cj4g
LSAgICAgICBwcmludCgiRVJST1I6IE5vIGZpcm13YXJlIGZpbGVzIGZvdW5kIGluICVzIiAlIGZ3
cGF0aCkKPiArICAgICAgIHByaW50KCgiRVJST1I6IE5vIGZpcm13YXJlIGZpbGVzIGZvdW5kIGlu
ICVzIiAlIGZ3cGF0aCkpCj4gICAgICAgICBzeXMuZXhpdCgxKQo+Cj4gIHJlcXVpcmVkX2Z3Zmls
ZXMgPSBbXQo+IEBAIC0xNDAsMTAgKzE0MCwxMCBAQCBmb3IgZiBpbiBmd2ZpbGVzOgo+ICAgICAg
ICAgICAgICAgICAgICBwaHl0eXBlc19tYXRjaChwaHl0eXBlcywgaW5pdHZhbG1hcHBpbmdbZl1b
MV0pOgo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVpcmVkX2Z3ZmlsZXMgKz0gW2ZdCj4g
ICAgICAgICAgICAgICAgIGNvbnRpbnVlCj4gLSAgICAgICBwcmludCgiV0FSTklORzogRmlybXdh
cmUgZmlsZSAlcyBub3QgZm91bmQgaW4gdGhlIG1hcHBpbmcgbGlzdHMiICUgZikKPiArICAgICAg
IHByaW50KCgiV0FSTklORzogRmlybXdhcmUgZmlsZSAlcyBub3QgZm91bmQgaW4gdGhlIG1hcHBp
bmcgbGlzdHMiICUgZikpCj4KPiAgZm9yIGYgaW4gZndmaWxlczoKPiAgICAgICAgIGlmIGYgbm90
IGluIHJlcXVpcmVkX2Z3ZmlsZXM6Cj4gLSAgICAgICAgICAgICAgIHByaW50KCJEZWxldGluZyAl
cyIgJSBmKQo+ICsgICAgICAgICAgICAgICBwcmludCgoIkRlbGV0aW5nICVzIiAlIGYpKQo+ICAg
ICAgICAgICAgICAgICBvcy51bmxpbmsoZndwYXRoICsgJy8nICsgZikKPgo+IC0tCj4gMS45LjEK
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
