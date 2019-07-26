Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9C575F7B
	for <lists+openwrt-devel@lfdr.de>; Fri, 26 Jul 2019 09:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vk1kt4Z/hBn4NyhfLzr48wv8zHcRRGCjCz5KXnpqFJ8=; b=e4Y8HFo4d33/Ce
	VN34gRJjPZ5ohv78MCOSjt0KsNjl8lYTQPnuVNiL6CgZ9AEwHT9ExCwTFghKU5OIp0eW/B0aftdmJ
	xcckBD9gsIPpon+CvsNtHWLZC36nb8vnjmEpnHALcTJ0OXWlfjzp1N5hIr4zNaII2NIhMawmeIbG0
	Mlb+qXfIAe3bWoP6QhlPGfR1o4gezCk6zWETnYL87ts4QDpWJDsVkue/DIx5WrcS2dvudjwJKHRyD
	l3SNEMM9ALGtbkeV6FV8Xfu6NXfP0dnaOeDRZ37J0ru7NPvUs9NA1CJdtBnmTeOYxUDwMx7Dn7KW6
	/NGv7SKQ6/yRZQBUCeUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hquIt-000345-LD; Fri, 26 Jul 2019 07:06:11 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hquIW-00033j-IO
 for openwrt-devel@lists.openwrt.org; Fri, 26 Jul 2019 07:05:49 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so102769645iot.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 26 Jul 2019 00:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GLlArqPAXS6RhYwWAy3hqfnaH09zKiy2E6uQjNyiCOE=;
 b=N3dm+UwW1o9SKw2e+BcnrD3uj6Of+dhUkLwIOlRBTdo8Tw0GzjZxZMb77ytKJlVz3f
 VNVwO0m+MiBiLTyZMwlhobSV2IRnIGZSB6UtiydKHHa7plKFMuHvBF/74b9rtwtkxOvh
 m2+DVT6G6cj6P9pHOslzOHlgI1y7YWSEZmSV7js6w945lHtTYxSJ54ZDMofOGQBVnKWJ
 7IPJLN0AhSxivq9uQI+l71DHjBGv3rXxOQZ33Wr84wta7JiY+uxuRktGlbZrb0KSddAu
 Ig0tuuedSb9lexCb8thd+OWfaroNVEHpdVFKjVbHMSCH3tgVIKDraX8So0KMRLOCnJlN
 hgnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GLlArqPAXS6RhYwWAy3hqfnaH09zKiy2E6uQjNyiCOE=;
 b=Z/In7QbqLm8NDzToyyNfaHZhylabNHY1gIyKK5JzNsvOnbY7oLb8g3lwyF4r13YnxJ
 /A7CJSV7BMBd0kEu32XB28obdYcrxR3apQdZz6ZT45qPKTmnf89DNGwtVJm7yK4WKcKR
 2dOFIr/GH1pwsMsA7KdcCrKsdLWQXjrNh+8KQVGhLnP7iUSYBZHIrBblSEKc6BW2QOK5
 6nnEnSOETUxcIl5jLO/XGE1ucU9Pjc2rkIAZ/jvP/OLGPDiImPnYLYWseOA/57fncAUp
 8HzrwjB57OnOaNCnwpcZ7y6ltXHH3LzMqfVFx5pUaba7IrHB+ecGrJrKj6bgcAXD1jus
 0R7A==
X-Gm-Message-State: APjAAAWQA12uB9GSlW22ekG9K7ockumPYyX95lkhTakBweQuESiuHada
 l7xl1ZoTbbHU22ErCl+Lam+fF+zZ8h9Uq70raoc=
X-Google-Smtp-Source: APXvYqyvUsLK0bp7387XNMpG35A6GJWrurFDILRWqpTD8p1m5mp7ydzjNtUyFqT3v85Tw9PxEnF9p1ulE6igHxoM+WA=
X-Received: by 2002:a02:7f15:: with SMTP id r21mr98879335jac.120.1564124746830; 
 Fri, 26 Jul 2019 00:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20180312135628.7864-1-zajec5@gmail.com>
 <dbbcb949-5ef0-385d-9176-98d23730a75c@nbd.name>
In-Reply-To: <dbbcb949-5ef0-385d-9176-98d23730a75c@nbd.name>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Fri, 26 Jul 2019 00:05:35 -0700
Message-ID: <CAOdf3grPha1T672-x97WvAzqTYmWXpRtPks_9257FyYXXrbdKQ@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_000548_630448_4E32BDDB 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [LEDE-DEV] [PATCH] kernel: drop patch hacking
 bridge to accept EAP only locally
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgRmVsaXgsCgpMZSBtYXIuIDEzIG1hcnMgMjAxOCDDoCAwMDo0MSwgRmVsaXggRmlldGthdSA8
bmJkQG5iZC5uYW1lPiBhIMOpY3JpdCA6Cj4KPiBPbiAyMDE4LTAzLTEyIDE0OjU2LCBSYWZhxYIg
TWnFgmVja2kgd3JvdGU6Cj4gPiBGcm9tOiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2ku
cGw+Cj4gPgo+ID4gRUFQT0wgZnJhbWVzIGhhdmUgd2lyZWxlc3MgaW50ZXJmYWNlIGFkZHJlc3Mg
c3BlY2lmaWVkIGFzIGRlc3RpbmF0aW9uLgo+ID4gVGhhdCBtYWtlcyAiZHN0LT5pc19sb2NhbCIg
Y29uZGl0aW9uIHRydWUgZm9yIHRoZW0gYW5kIHJlc3VsdHMgaW4KPiA+IHVwc3RyZWFtIGNvZGUg
cHJvY2Vzc2luZyBmcmFtZXMgdGhlIHNhbWUgd2F5IGFzIE9wZW5XcnQvTEVERSdzIGhhY2suCj4g
Pgo+ID4gVGhpcyBjb2RlIGNvdWxkIGJlIG5lZWRlZCB5ZWFycyBhZ28gYnV0IGN1cnJlbnRseSBp
dCBzZWVtcyByZWR1bmRhbnQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tp
IDxyYWZhbEBtaWxlY2tpLnBsPgo+IEkgdGhpbmsgSSByZW1lbWJlciBub3cgd2h5IEkgYWRkZWQg
dGhpcyB5ZWFycyBhZ28uIFRoZSBmYWlsdXJlIGNhc2UKPiBpbnZvbHZlZCBhIGNsaWVudCByb2Ft
aW5nIGJldHdlZW4gbXVsdGlwbGUgYWNjZXNzIHBvaW50cy4KPiBJIHRoaW5rIGluIHNvbWUgb2Yg
dGhlc2UgY2FzZXMsIHRoZSBicmlkZ2UgY29uc2lkZXJlZCB0aGUgY2xpZW50IE1BQyB0bwo+IGJl
IHJlYWNoYWJsZSB2aWEgTEFOIGluc3RlYWQgb2YgdGhlIFdMQU4gaW50ZXJmYWNlLCBiZWNhdXNl
IHRoYXQncyB3aGVyZQo+IHRoZSBwYWNrZXRzIHdlcmUgY29taW5nIGZyb20gZWFybGllci4KCkkn
bSByZXZpdmluZyB0aGlzIG9sZCB0aHJlYWQgYmVjYXVzZSBJIHdhcyB0cnlpbmcgdG8gbGV0IEVB
UCBmcmFtZSBnbwp0aHJvdWdoIGEgYnJpZGdlCndpdGggMiB3aXJlZCBjb25uZWN0aW9uIChzZXR0
aW5nIGdyb3VwX2Z3ZF9tYXNrKSwgYW5kIHRoaXMgb2xkIGhhY2sgYmxvY2tzIG1lCgpJZiB0aGUg
Y2xpZW50IGp1c3Qgc2VudCBhbiBFQVAgZnJhbWUgdmlhIFdMQU4sIHdoeSB3b3VsZG4ndCB0aGUg
YnJpZGdlIGxlYXJuCnRoYXQgdGhlIGFkZHJlc3MgaXMgbm93IFdMQU4gc2lkZSBhbmQgc2VuZCBy
ZXNwb25zZSBiYWNrIG9uIHRoZSBXTEFOID8KQW5kIHdoeSBpcyBpdCBhbiBpc3N1ZSBqdXN0IGZv
ciBFQVAgPwpTYXkgdGhlIGNsaWVudCBpcyByb2FtaW5nIGZvciBBIHRvIEIsIG1heWJlIHRoZSBw
cm9ibGVtIHdhcyB0aGF0IHRoZSBjbGllbnQgd2FzCnNlbmRpbmcgRUFQIGZyYW1lIHdpdGggQSBt
YWMgYWRkcmVzcyBhcyBkZXN0aW5hdGlvbiBpbnN0ZWFkIG9mIEIgPwoKSW4gYW55IGNhc2UgSSBu
ZWVkIGEgd2F5IHRvIGRpc2FibGUgdGhpcyBoYWNrLCB3b3VsZCB5b3UgYWNjZXB0IGEKcGF0Y2gg
dG8gZHJvcCBpdAooYW5kIG1heWJlIHJlaW50cm9kdWNlIGEgYnVnKSBvciB3b3VsZCB5b3UgcHJl
ZmVyIGEgcGF0Y2ggdG8gbWFrZSBpdApjb25maWd1cmFibGUgPwoKRXRpZW5uZQoKPgo+IC0gRmVs
aXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
