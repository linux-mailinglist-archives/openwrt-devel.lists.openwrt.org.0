Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31CB164D4F
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Feb 2020 19:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:From:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Edj3ozMZMh6PGowhenL9DvE3abjSttx9j5ByALrSBg=; b=aHDZBBDWN2AnsBa5ORIzRLkd5
	pzDrABqRKgSCVCg9UCOLc5HUdM1VeQD/T+EV/0WTTDd/vfnh0X/KZJGIiUBl2TYgqWEoPRJjk1XQs
	38p/pBTKlWosRWXmz5rT4YG5O5u/bvhBF9AZklZHUqKzNh406GxAIfVLn0A/MSKVuKbFe8pg01KcV
	z46iNByOfoYmt/iq45BiXA51rx1bme6H/kDOHrrdYZWahTW9NqcxVljExKzZyZFEJnEQw0El+liPe
	PXUP6h3DR+VQOlCJApFScoxgcbt0paSkmzv8CLcFy79ad09ntLpdsdq0Iz/2uukaHi4NlQb+HDTSu
	3fBcx4S7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4TkR-0008E6-C9; Wed, 19 Feb 2020 18:06:59 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TkK-0008DW-HZ
 for openwrt-devel@lists.openwrt.org; Wed, 19 Feb 2020 18:06:54 +0000
Received: from [192.168.43.60] (unknown [172.58.30.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 2AD8C16264;
 Wed, 19 Feb 2020 10:06:30 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 2AD8C16264
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1582135592;
 bh=PIPDQL989oA6mlbwWVTKbU2l9UXC4TNZW9pxKYCs5Ho=;
 h=Date:From:To:CC:Subject:References:In-Reply-To:From;
 b=r/cy5n+Wxb7Vca8wwe1STe735mLag+VZIlZz33HCwfr9MZbAw88t945Ra4STLMq5H
 0mRC1jSPKPBM4ZyiXvAnCksl5cz9SJnuQMZrTwrKIDhRNeEk4AFaljQh2vpCMbT9FV
 BRhGTryY98oklCsOZRJsKxvXdOd9T/r78E3eA0rE=
Message-ID: <5E4D7923.6020201@candelatech.com>
Date: Wed, 19 Feb 2020 10:06:27 -0800
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
References: <5E4B4D26.9030808@candelatech.com>
 <CALYz8yovDDQmxyeY_wtb7h+QmUPhw2FtMW4JQk9UPBPJrGoxsQ@mail.gmail.com>
In-Reply-To: <CALYz8yovDDQmxyeY_wtb7h+QmUPhw2FtMW4JQk9UPBPJrGoxsQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_100652_610167_9794FFED 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] New ath10k-ct driver,
 supports vlans on 10.1 firmware.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMDIvMTcvMjAyMCAwNzoyNCBQTSwg0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9IHdyb3Rl
Ogo+IEhlbGxvLCBCZW4uCj4KPiBEb2VzIGl0IG1lYW4gdGhhdCBBUCBWTEFOIG1vZGUgd2lsbCB1
c2Ugc29mdHdhcmUgZW5jcnlwdGlvbiBmb3IgZXZlcnkgdHggZnJhbWU/Cj4KPiBCZXN0IHJlZ2Fy
ZHMsCj4gS2lyaWxsIEx1a29uaW4KCkhlbGxvLAoKSSBoYXZlIG5vdCB0ZXN0ZWQgaXQsIHNvIG5v
dCBjZXJ0YWluLiAgTWF0dGhpYXMgcmVwb3J0ZWQgaXQgd29ya2VkIGZvciBoaW0gaW4gbGlnaHQK
dGVzdGluZy4KCklmIHlvdSBjYW4gdGVzdCB0aGlzLCBwbGVhc2UgZG8gbGV0IHVzIGtub3cgaG93
IGl0IHdvcmtzIGZvciB5b3UuCgpUaGFua3MsCkJlbgoKPgo+INCy0YIsIDE4INGE0LXQstGALiAy
MDIwINCzLiwgNzozNCBCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbSA8bWFpbHRv
OmdyZWVhcmJAY2FuZGVsYXRlY2guY29tPj46Cj4KPiAgICAgVGhhbmtzIHRvIE1hdHRoaWFzIExh
cmlzY2ggZm9yIGFkZGluZyBzdXBwb3J0IGZvciBBUCB2bGFucyBvbiAxMC4xIGN0IGZpcm13YXJl
IGFuZCB0ZXN0aW5nIGl0IG91dC4KPgo+ICAgICBVcHN0cmVhbSBjb21taXQgSUQ6Cj4KPiAgICAg
YmVkNDlhNWY2ODI0ZmNkODc1N2ZkMjdmNmIyYTRmNmVhOTMzYmYyZgo+Cj4gICAgIElmIHNvbWVv
bmUgY2FuIHB1bGwgdGhpcyBpbnRvIE9wZW5XUlQgYW5kIHRlc3QgSSdkIGFwcHJlY2lhdGUgaXQu
Cj4KPiAgICAgVGhhbmtzLAo+ICAgICBCZW4KPgo+ICAgICAtLQo+ICAgICBCZW4gR3JlZWFyIDxn
cmVlYXJiQGNhbmRlbGF0ZWNoLmNvbSA8bWFpbHRvOmdyZWVhcmJAY2FuZGVsYXRlY2guY29tPj4K
PiAgICAgQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29t
Cj4KPgo+ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ICAgICBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+ICAgICBvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnIDxtYWlsdG86b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZz4K
PiAgICAgaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwKPgoKCi0tIApCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4KQ2FuZGVs
YSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
