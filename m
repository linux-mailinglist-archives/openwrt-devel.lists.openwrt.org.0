Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88C2F60BF
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 18:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIxi2PFRUDtsG+mLd0BDa2mg3Gh09rIGq/8HZ8Gm3mU=; b=XyjUGmxQpQdk4R
	R1PEFli7U+iz94bBSSajwgJ2kIx/resHOLBukq5lDZfWBL26qZkv3bNno1/s5S+/wibcoTfeFNxVC
	hCRRYZxXE0+ewyLi+zyPglbyqbpfdI3B33uVgNFIqFlvHsJh+C7LwthZXJeV9JOWbI9lypDLkcVl8
	R5nKJ/11OooAD6ySJbqwa3T8OdvgBVuIaj4UZ3GWQyN5MZiGWXuQHDjbdZuEv5WZAWQUPjc9Ww6oq
	zSup3AY8Rvo0m8MT1K46xRwPVF1Ocb+DSbkMTJyuFUWIrWV02YxS+wmuXg3AIFjjOfiDaJEPIQjlX
	tpiSsiZ8apF4eRvKu1Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUlO-0006Ka-Um; Sat, 09 Nov 2019 17:43:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUlG-0006K2-Sh
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 17:43:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id b11so9236039wmb.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 09:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kKDUGrqObaIPQG4C1scCYZH9yqntnN90GyPd+VFh+/w=;
 b=Wjw6tq7vYDb3hcC3vsCo2RQIQzB6NvdC/pckRcx0vRKKcquc98ojV75TVVOkFC03Rl
 aZv4WieaCzTvt3DrBLv8wxNwz0HLC/0k31v5qt+Ub9drtmnichd9D1WJWtk6BY7blrnR
 QP2+Fkpf1MXsNavoDIen7QLFfwtSJMIM71BBwBl/GX096o8y0xKJ1gmFobvzFYr5EwTm
 SAMxFFGxNjKI0qo2pCU3BUgt6W5vzuOSt4RvV5mS79EBaMQJNI/WgZnBmEZHyd/YgL7h
 jYt5Da8RT4dwXuMMBgRXHTMOUz5rQKUul3VZz/bRSgqX/0S+v+V99LSJY0GAxNxZxbgm
 dOUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kKDUGrqObaIPQG4C1scCYZH9yqntnN90GyPd+VFh+/w=;
 b=LVx1P4Y3XuDWO6rcj2HXKBXvNWYAx2qHK03USBrzgdwNOdwOf0smGFllBvXk58O6GL
 CxMpo8OEZfOQxZNitMmeN42j8ez24KWC125Dvv2l6RqPiinWZ1p2M61MILcYF6Lf3pvj
 LaQu4kAFdB1WVpfM1HHp2oycCF6kZPpa59FbjcoeqgTOigbGFS3fwCAouQp171uRV/rK
 ESmVb2MtHsuhXVoaG9qEhQVtMY9Ctd4z5uKfiqNmyUHhr1SRuiTza8hr4hDwzvgICPXz
 e6EYwywxhDWhn1dPJHnFN2USgXgTSq8x54XDYEp6IKAGMkr5rtlCNuXXiGsdmeDAGQ7V
 1gBw==
X-Gm-Message-State: APjAAAWuapl39KrkvjpIZcOKHD+esJewV2T091gArk1fUe6q3Ypbiy/m
 wW09Ua5jV8Kw6ljkmgEufyjR8j/xX946p+K9hqU=
X-Google-Smtp-Source: APXvYqwQU0gOvuMRdbTHHZ4FnDjeqOWeN33WjPs+wmYniafB5XHkrtyESPlU6O2fX3Q61PUZtFgEtyESFYTd1ra/p+o=
X-Received: by 2002:a1c:7911:: with SMTP id l17mr12589308wme.107.1573321377297; 
 Sat, 09 Nov 2019 09:42:57 -0800 (PST)
MIME-Version: 1.0
References: <20191109125521.11981-1-ynezz@true.cz>
In-Reply-To: <20191109125521.11981-1-ynezz@true.cz>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 9 Nov 2019 18:43:04 +0100
Message-ID: <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_094258_928782_BE9B094E 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH maintainer-tools] patchwork-apply.sh:
 help spotting DMARC mangled patches
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

T24gU2F0LCA5IE5vdiAyMDE5IGF0IDEzOjU1LCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PiB3cm90ZToKPgo+IEF2b2lkIERNQVJDIHBsYWd1ZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2VzOgo+
Cj4gIDg3ZjkyOTIzMDBjZiBob3N0YXBkOiBhZGQgSUVFRSA4MDIuMTFrIHN1cHBvcnQKPiAgNDUw
ZDQ0YThlYWQyIG9wZW5zc2w6IGNoYW5nZSBkZWZhdWx0czogRU5HSU5FOm9uLCBOUE46b2ZmLCBt
aXNjCj4gIGVhYmMxZGRjNDU0MSBidWlsZDogSG9ub3VyIE5PX0NPTE9SIGluIGluY2x1ZGUvc2Nh
bi5tawo+ICAzZmI0NTU3NmFjMTYgY3J5cHRvZGV2LWxpbnV4OiBtb3ZlIGZyb20gcGFja2FnZXMg
ZmVlZAo+ICBhNzMyODNkYzEwZjcga2VybmVsOiBuZi1uYXRoZWxwZXItZXh0cmEgZGVwZW5kcyBv
biBpcHQtcmF3Cj4gIDAzMTdmYzM2NThlYiBsaWJwY2FwOiBwYXRjaCB0byBhZGQgbGltaXRzLmgg
dG8gcGNhcC11c2ItbGludXguYwo+ICAyNmRiZjc5ZjQ5MDUgbGliZXZlbnQyOiBEb24ndCBidWls
ZCB0ZXN0cyBhbmQgc2FtcGxlcwo+ICBkNTkxMjYwNDA3MDEgYnJjbTYzeHg6IGluaXRpYWwgc3Vw
cG9ydCBmb3IgU2t5IFNSMTAyIHJvdXRlcgo+ICAwOTRkNDljZGRmOTMga2VybmVsOiBidW1wIDQu
MTQgdG8gNC4xNC41MQo+ICAyNDcwNTVjYmZiZjEgaWdtcHByb3h5OiBidW1wIHRvIDAuMi4xCj4g
IGM0NTE0MzRiOTYzZCBjYWtlOiBidW1wIHRvIDIwMTgwNTA0IGJha2UKPiAgMDgwZmI3YTNmYmI2
IGlwcm91dGUyOiBpbXBvcnQgbGF0ZXN0IGNha2UKPiAgYWQ1YWYzN2NhNzkzIGlwcm91dGUyOiBi
YWNrcG9ydCBqc29uX3ByaW50LWZpeC1oaWRkZW4tNjQtYml0LXR5cGUtcHJvbW90aW9uCj4gIDc4
ZjQzMDU5MzNiOSBpZnRvcDogYnVtcCB0byBsYXRlc3QKPiAgNzc4M2YzMTM1OWNiIGJhc2UtZmls
ZXM6IG5hbmQ6IHVzZSBDSV9LRVJOUEFSVCB3aGVuZXZlciB0aGUga2VybmVsIHZvbHVtZSBpcyBu
ZWVkZWQKPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4g
LS0tCj4gIHBhdGNod29yay1hcHBseS5zaCB8IDYgKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9wYXRjaHdvcmstYXBwbHkuc2ggYi9wYXRj
aHdvcmstYXBwbHkuc2gKPiBpbmRleCA1NTA2YWRiZmU0NTEuLjUwNmEwOWZkNGZkNSAxMDA3NTUK
PiAtLS0gYS9wYXRjaHdvcmstYXBwbHkuc2gKPiArKysgYi9wYXRjaHdvcmstYXBwbHkuc2gKPiBA
QCAtMTQwLDYgKzE0MCwxMiBAQCBlY2hvICIkMSIgfCBncmVwIC1zcUUgJ15bMC05XSskJyB8fCB7
Cj4gICAgICAgICB9Cj4gIH0KPgo+ICtncmVwIC0tY29sb3IgLS1jb250ZXh0PTMgIkRNQVJDIFJl
amVjdC9RdWFyYW50aW5lIiAiJDEucGF0Y2giICYmIHsKPiArICAgICAgIGlmIHllc25vICJCZXdh
cmUgRE1BUkMgdGV4dCBkZXRlY3RlZCEgU2V0IHRvICdDaGFuZ2VzIFJlcXVlc3RlZCc/IiAieSI7
IHRoZW4KPiArICAgICAgICAgICAgICAgcHdjbGllbnQgdXBkYXRlIC1zICJDaGFuZ2VzIFJlcXVl
c3RlZCIgIiQxIgoKVGhpcyBETUFSQyB0aGluZyBpcyBub3RoaW5nIHRoZSBzdWJtaXR0ZXIgY2Fu
IGZpeCB1bmxlc3MgdGhleSBydW4KdGhlaXIgb3duIG1haWwgc2VydmVyLiBBdCBiZXN0IGEgc2Vk
IHNjcmlwdCBmaXhpbmcgdXAgdGhlIHBhdGNoIHdvdWxkCndvcmsgaGVyZSwgaWYgdGhpcyBjYW4g
YmUgc3VmZmljaWVudGx5IGV4cHJlc3NlZC4KCkEgYmV0dGVyIHBsYWNlIHdvdWxkIGJlIGEgZ2l0
IGhvb2sgb24gb3VyIHNlcnZlciByZWplY3RpbmcgYW55IGNvbW1pdHMKd2l0aCBpdCAobGlrZSB3
ZSBhbHJlYWR5IGhhdmUgZm9yIG1pc3NpbmcgU09CKS4KCgpSZWdhcmRzCkpvbmFzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
