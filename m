Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3097D27A5
	for <lists+openwrt-devel@lfdr.de>; Thu, 10 Oct 2019 13:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuIzfdZyRpKPWYrDmf/JvG3rNA4iQ/ONcXyNiPcYngs=; b=JL307byiiTOWV/
	1Ad2yKuv32cLleWsIHWRPLWAF4uFtyjM230fNVVSZxiTfGIbqKZKum1VF538V/9QQRslSNTv2W31b
	rBikHlcNtr99uBrKuhlKk2pum4zAFeFxx1KO5IqUfnD+xFrpqLu9OBVtjN0S9mrAO1dVYz/8YKAK7
	jm2aX+Jwr6fK+3DparNp83s4gdBoUvMQGtkK0wXLJspHw0L0t8fEaYPF5c2aVVeArEe16N7JTrSQ6
	sRim9aaoH129tU0PvcgmmI28mV9T8ciAvXzb6MTp6XoDOtakoKBf4k2DLjcM9IjYyzVNYw4dV+ZFG
	4YkMW80kkYOboLkA712w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWDC-0005Gv-Fw; Thu, 10 Oct 2019 11:02:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWD2-0005Gb-Lj
 for openwrt-devel@lists.openwrt.org; Thu, 10 Oct 2019 11:02:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id a22so5766549ljd.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 10 Oct 2019 04:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ksj3W1jhksPjfK6HQ1wmCe/fEiYEJ7eT38no2FcdeV0=;
 b=UUoKz1zhtb5PCFcHca45qOwOV988xDNd/eFa9iVb9ofYUGp/NCQ/J/11reC1Q4eOnm
 rksUMZP8ukiGwzIrCw1jECCLUlH/PXRNY7UIrmt2C6sVt9r4npazjgU0H3nN29lV6uIC
 mnKCXX5jG8wx0cXfIMrtQ2oHi25mVeR0Yv7VoMdLCsCsWBwnZfWbfb6XKWzmbH0hY7V1
 qhdQhcgSM2rJwbmWankb+gMx12T/lL0/E6pLbx0tzZEL4DwCTuVV8n74YSNknEnumGCW
 634t5P7EfJ6ZsZkwt4CDvqB+LdxLZk04Qh/2nFq74XZdqWEB2mkvWpVy8KOA4I8NxlcQ
 KVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ksj3W1jhksPjfK6HQ1wmCe/fEiYEJ7eT38no2FcdeV0=;
 b=nJBSmPoh4ORQF2EoH+PjO+61fs2eeElGiSH9fL2IgZrECFsfeCHg5d1U/TOl/j38d6
 VMjVj6d8zIeqUTfA4dmFH1TXDvhPTMdb3tuPcJYnXmItvKOG4l3M4z+UA4XxCv6H7B4f
 QkU0FR5IfrxaaegaE6bDGRSkSwolHyKsX0kLjsuTqaBcVbAatmXwE9DoynIGSsY5VliE
 YJYnSEebJMXvjBS34a56NA2lBc1rF9541HGlqhAUtl+WsAAygRAUTghBzEN2XK+0wi+R
 Yq4FYGc72+cVV0znBWvFeWLI+ZRgkQZnUfi1Y7ROeMN77QftvqWjTpScvKK/Uj4FdIwv
 6cNw==
X-Gm-Message-State: APjAAAUZ/utsz5UwtdE+ZBjZAHfFsmG/l5fCT4UH2M1u2ZXZ3q6Ib5W9
 VRFq1wA/1FELwfddHPGTEF4N7eFOEXraQ+eh8VU=
X-Google-Smtp-Source: APXvYqxDgTzCVqDDJpccUF54gUCFZQtZkRudd5iwFCsW0rrxvh3KnnHwlfpDYKRPKJunwUfNXosY0zLeeWlPOIQkGUM=
X-Received: by 2002:a2e:501c:: with SMTP id e28mr6005431ljb.204.1570705334360; 
 Thu, 10 Oct 2019 04:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <1570624897-16993-1-git-send-email-alin.nastac@gmail.com>
 <f67728d2-88d6-433d-74f4-671ca22599d5@phrozen.org>
 <CAF1oqRD6fe0Aif=1AFhTO-ccW-sVFPcgCdou2ksN9vEKFduqCg@mail.gmail.com>
 <00a2f245-2a85-e597-e6a8-74269d0f31ae@phrozen.org>
 <CAF1oqRBz8sNObj42A59AC24HwgFGS0RGiyEQdspnk=Kq+CGHtQ@mail.gmail.com>
In-Reply-To: <CAF1oqRBz8sNObj42A59AC24HwgFGS0RGiyEQdspnk=Kq+CGHtQ@mail.gmail.com>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Thu, 10 Oct 2019 13:02:03 +0200
Message-ID: <CAF1oqRBGqB6EbDx4P0ravefuYG1wpefGN4wGw296JcGCeXUAAw@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_040216_734320_74A5CDFA 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: add a hook before mounting the
 overlay
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

T24gV2VkLCBPY3QgOSwgMjAxOSBhdCA0OjUyIFBNIEFsaW4gTsSDc3RhYyA8YWxpbi5uYXN0YWNA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgT2N0IDksIDIwMTkgYXQgNDo0MSBQTSBKb2hu
IENyaXNwaW4gPGpvaG5AcGhyb3plbi5vcmc+IHdyb3RlOgo+ID4KPiA+Cj4gPiBPbiAwOS8xMC8y
MDE5IDE2OjM0LCBBbGluIE7Eg3N0YWMgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgT2N0IDksIDIwMTkg
YXQgMjo1OSBQTSBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5vcmc+IHdyb3RlOgo+ID4gPj4K
PiA+ID4+IE9uIDA5LzEwLzIwMTkgMTQ6NDEsIEFsaW4gTmFzdGFjIHdyb3RlOgo+ID4gPj4+IFNj
cmlwdHMgbG9jYXRlZCBpbiB0aGUgZGlyZWN0b3J5IC9saWIvbW91bnRfcm9vdCB3aWxsIGJlIGV4
ZWN1dGVkCj4gPiA+Pj4gYmVmb3JlIG1vdW50aW5nIHRoZSBvdmVybGF5Lgo+ID4gPj4+Cj4gPiA+
Pj4gU2lnbmVkLW9mZi1ieTogQWxpbiBOYXN0YWMgPGFsaW4ubmFzdGFjQGdtYWlsLmNvbT4KPiA+
ID4+IEhpLAo+ID4gPj4KPiA+ID4+IHNob3VsZCBpdCBub3QgYmUgL2V0Yy9tb3VudF9yb290LmQv
ID8gd2hhdCBkbyB5b3UgbmVlZCB0aGlzIGZvciBpZiBJIG1heQo+ID4gPj4gYXNrID8KPiA+ID4+
Cj4gPiA+PiBmdXJ0aGVyIGNvbW1lbnRzIGlubGluZSAuLi4KPiA+ID4+Cj4gPiA+PiAgICAgICBK
b2huCj4gPiA+Pgo+ID4gPiBIaSBKb2huLAo+ID4gPgo+ID4gPiBNeSB0YXJnZXQgaXMgZHVhbCBi
YW5rIGFuZCBJIG5lZWQgdG8gY29weSBwYXJ0cyBvZiB0aGUgY3VzdG9taXphdGlvbgo+ID4gPiBm
cm9tIHRoZSBvbGQgYmFuayBhZnRlciB1cGdyYWRlLgo+ID4KPiA+IHBsZWFzZSBkb250IHJlbW92
ZSB0aGUgQ0MgdG90IGhlIG1haWxpbmcgbGlzdAo+IFNvcnJ5LCBJIHB1c2hlZCB0aGUgd3Jvbmcg
cmVwbHkgYnV0dG9uLgo+Cj4gPiBJIGRvbnQgdW5kZXJzdGFtZCB0aGlzIHBhcnQsIHNob3VsZCBz
eXN1cGdyYWRlIG5vdCBiZSBhYmxlIHRvIGhhbmRsZQo+ID4gdGhpcyBmb3IgeW91ID8KPgo+IFdl
bGwsIGl0IGlzIG5vdCB0aGF0IHN0cmFpZ2h0Zm9yd2FyZCBhcyBzYXZpbmcgJiByZXN0b3Jpbmcg
dGhlIG9sZAo+IGNvbmZpZ3VyYXRpb24gZmlsZXMuIE9ubHkgcGFydHMgb2YgdGhlIFVDSSBjb25m
aWd1cmF0aW9uIG11c3QgYmUKPiBtaWdyYXRlZC4gRm9yIGluc3RhbmNlLCBVQ0kgb3B0aW9uIGEu
Yi5jIG11c3QgYmUgY29waWVkIGZyb20gdGhlIG9sZAo+IGltYWdlLCBidXQgYS5iLmQgbXVzdCBi
ZSByZXNldCB0byB0aGUgdmFsdWUgZm91bmQgaW4gdGhlIG5ldyBpbWFnZS4KPgoKSXMgdGhpcyB1
c2UgY2FzZSBhIGdvb2QgZW5vdWdoIHJlYXNvbiB0byBpbXBsZW1lbnQgdGhpcyBmZWF0dXJlPwoK
PiA+ID4gVG8gcmVzdW1lIHlvdXIgb2JzZXJ2YXRpb25zOgo+ID4gPiAgIC0gc2NyaXB0cyBtdXN0
IGJlIHJlbG9jYXRlZCB0byAvZXRjL21vdW50X3Jvb3QuZC8KPiA+ID4gICAtIHVzZSBydW5xdWV1
ZSBBUEkKPiA+ID4gICAtIGltcGxlbWVudCB0aGUgbmVjZXNzYXJ5IGZ1bmN0aW9ucyBpbiBvdmVy
bGF5LmMKPiA+ID4gV291bGQgdGhhdCBiZSBPSz8gSWYgc28sIEkgd2lsbCBiZSBiYWNrIHdpdGgg
YSAybmQgdmVyc2lvbiBvZiB0aGlzIHBhdGNoLgo+ID4KPiA+IEkgd291bGQgZmlyc3QgbGlrZSB0
byB1bmRlcnN0YW5kIHRoZSB1c2UtY2FzZQo+ID4KPiA+ICAgICAgSm9obgoKSSd2ZSB0cmllZCB0
byB1c2UgcnVucXVldWUgQVBJLi4uIFRoaXMgQVBJIGlzIGRlc2lnbmVkIHRvIGJlIHVzZWQgaW4K
Y29uanVuY3Rpb24gd2l0aCB1bG9vcCwgd2hpY2ggaXMgZGVzaWduZWQgdG8gYmUgdXNlZCB3aXRo
aW4gZGFlbW9ucy4KbW91bnRfcm9vdCBpcyBub3QgYSBkYWVtb24gYW5kIGl0IGRvZXMgbm90IGhh
dmUgYSBtYWluIGxvb3AsIHNvIElNSE8KaXQgZG9lcyBub3QgZml0IHdlbGwgaW4gdGhpcyBwbGFj
ZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
