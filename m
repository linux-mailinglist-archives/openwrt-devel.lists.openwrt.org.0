Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB448FF53C
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 20:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YggVzvpf/yfrL137zOCvBBJBhRwzTtSXCrZAeZ5HDIE=; b=WSEQ4f6JtPIpNE
	1nyDkkhThIMupWP3E9xZrt0WrrGVgY4AY8a4Zl+3r9yvnFuKo5zv1TcYdECzGEbH7JRAKrbbe7AKQ
	o3vpC65ClHpU3ka16/YPspBQAIRQtzN06XVaf5WYnclyuxQ4JPtiQVWOkVLcnB90gzjBJ6iI1Uhuj
	OCUA6CdPw5uvflRf9zE2/WRwSqfCPxGiAiQ3HOyH1u3frPYi4F0hAE6jdGet5PV2z0NqDuU3a/sKQ
	8w/RD7FdWuon0XinHDd5POyg2X8JqWNkyofPpwC5e8auA5puXjzChuR4R8ShTPHIwezKjwwprmRhY
	q5tDarCJYc1PXb78GQ8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW3L1-00029y-IP; Sat, 16 Nov 2019 19:02:27 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW3Kr-000299-Nv
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 19:02:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id r2so9019364iot.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 11:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9ZefEKqeA4+nzXIBcEan8LIgoObh5MOUNFiLDh493Y4=;
 b=CQjcP0GIGkIk6ksvu+cFzxmqv5UUvCzpdT0amRM1kmMUoyFEzk/7i/O3fKaSUy+/NB
 uA+lanw1dEJR5R39v/2KXGXlPk+H1zgysdXUZdv0Au+GsOnRx8yxchK7odAfrlhGUpBn
 tt5qRcl8Kvlf+gYdACIv0eJC4GSSutOAjNOwp/3jkhPRE5uZ2cLdKVujodsJVInfLfm5
 9GoT4vXt1yBwzGQ1BEj6CP2fbd8ftj35o2E6iP9V+0YbNVjnakpILsAu0RVbrjyLtbct
 vHP4EoRMZynmKxb1oiDSUP6FXICx7kA9HwmML8mKdSvyKGXAVMAsIynBirYiN8QjkX3J
 BS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9ZefEKqeA4+nzXIBcEan8LIgoObh5MOUNFiLDh493Y4=;
 b=QvunGl+pR3iphdDgDNZr+mZ84orVFVKarBXz6DyO9424aDwtl2Eq+bXc2C5OABpNem
 bd3OtoqRX4AAhPnkqNEt4exDe4C5FJEBQI87vHDnp+o6zQg4Si0n+6MEIade/Ml+psZO
 VYYdryY+BiBbVcUm6GDGLJE03UK4TSn9EJ8A3LhskNA8typuiEDIGHx+jEDrKHHq6Eev
 TO2a3mSJQvYaeKtlmGgMqHBr/BvBz1sYuq4mpy6KaM5vrnvo13teSimutm+F4tcvZoAs
 78VQdTMGQnFG+QdNEXE3Rb9QDj0fGvYDt3MuNn+HNbqGg0FVxwF9RphXYa12nl39TsBC
 fE+g==
X-Gm-Message-State: APjAAAWxc6o3yXdTL0pHbPCbHH5d1WEGtrFUX2C1tNLlm0OqQdwxa8YP
 Rhbmvmtj4+L+9WT26RDG1XU6J92B4EKtfkGx3kk=
X-Google-Smtp-Source: APXvYqyONixPw3XUupSjXy103FFAp9mbMrP6wu6d3lJX8D+/1TFCM9bv/uqu93Di/fcnLE0rtLDKVsCKUcUAEetbv68=
X-Received: by 2002:a5e:870c:: with SMTP id y12mr3908784ioj.215.1573930935205; 
 Sat, 16 Nov 2019 11:02:15 -0800 (PST)
MIME-Version: 1.0
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <f05be16b-83ba-6640-c0e8-04e03877e589@gmail.com>
In-Reply-To: <f05be16b-83ba-6640-c0e8-04e03877e589@gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 16 Nov 2019 22:02:04 +0300
Message-ID: <CANoib0GdgJ4QtsVD-O_GUhRLoeeRAacNLNoc9w_1dM6Xq7n6Sg@mail.gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_110217_804575_2F748C1D 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into hostname
 and SSID
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBhbSBzdHJvbmdseSBhZ2FpbnN0IHRoaXMgY2hhbmdlIGZvciBhIHNpbXBsZSByZWFzb24uIEFk
dmFudGFnZSBvZgp0aGlzIGNoYW5nZSBpcyBxdWVzdGlvbmFibGUsIGJ1dCB3ZSBjYW4gZ2V0IGFs
bCBzb3J0cyBvZiB0cm91YmxlLgoK0YHQsSwgMTYg0L3QvtGP0LEuIDIwMTkg0LMuINCyIDE4OjMx
LCBQaW90ciBEeW1hY3ogPHBlcGUya0BnbWFpbC5jb20+Ogo+Cj4gSGkgQWRyaWFuLAo+Cj4gT24g
MDguMTEuMjAxOSAxMjo0OCwgQWRyaWFuIFNjaG11dHpsZXIgd3JvdGU6Cj4gPiBUaGlzIHBhdGNo
c2V0IHdpbGwgaW50cm9kdWNlIHRoZSBsYWJlbCBNQUMgYWRkcmVzcyBpbnRvIHRoZSBfZGVmYXVs
dF8KPiA+IGhvc3RuYW1lIGFuZCBTU0lEIG9mIE9wZW5XcnQgZGV2aWNlcy4gRGV2aWNlcyBpbnN0
YWxsZWQgYWZ0ZXIgdGhlc2UKPiA+IGNvbW1pdHMgKG9yIHVwZ3JhZGVkIHdpdGggc3lzdXBncmFk
ZSAtbikgd2lsbCBoYXZlIHRoZWlyIGhvc3RuYW1lIGFuZAo+ID4gU1NJRCBzZXQgdG8KPiA+IE9w
ZW5XcnQtZGRlZWZmCj4gPiB3aGVyZSAiZGRlZWZmIiBpcyB0aGUgRVVJIG9mIHRoZSBsYWJlbCBN
QUMgYWRkcmVzcyBhYTpiYjpjYzpkZDplZTpmZi4KPgo+IEFzIHRoaXMgaXMgc29tZXRoaW5nIHdo
aWNoIHRvdWNoZXMgZXNzZW50aWFsIHN5c3RlbSBzZXR0aW5nCj4gKGlkZW50aWZpY2F0aW9uKSwg
SSB3b3VsZCByZWFsbHkgbGlrZSBvdGhlciB0ZWFtIG1lbWJlcnMgdG8gam9pbiB0aGUKPiBkaXNj
dXNzaW9uIGJlZm9yZSBpdCBzbmVha3MgaW4gYWdhaW4uIEVzcGVjaWFsbHkgYmVjYXVzZSB0aGlz
IHdhcwo+IGFscmVhZHkgbWVyZ2VkIGFuZCByZXZlcnRlZCBsYXRlciwgYWZ0ZXIgc2hvcnQgZGlz
Y3Vzc2lvbiBvbiBJUkMuCj4KPiAgRnJvbSBteSBwb2ludCBvZiB2aWV3LCBJJ20gb25seSB3b3Jy
aWVkIGFib3V0IGFsbCB0aGUgY29uc2VxdWVuY2VzIHdlCj4gZG9uJ3Qga25vdyBhYm91dCwgc28g
SSB3b3VsZCBwcmVmZXIgdG8gaGF2ZSB0aGlzIG9uZSBfb3B0aW9uYWxfLgo+Cj4gT24gdGhlIG90
aGVyIGhhbmQsIEknbSBmaW5lIHdpdGggdGhlIFNTSUQgY2hhbmdlIGJ1dCBJIHNlZSBpdCdzIG5v
dAo+IGdvaW5nIHRvIGJlIHRoYXQgc3RyYWlnaHRmb3J3YXJkIHRvIGltcGxlbWVudC4KPiBBbHNv
LCB3aGF0IEknbSB0aGlua2luZyBhYm91dCBoZXJlIGlzIHdoaWNoIG9uZSBNQUMgc2hvdWxkIGJl
IHVzZWQgZm9yCj4gdGhlIFNTSUQgbmFtZS4gVGhlICdsYWJlbCcgb25lIHdoaWNoIGlzIG5vdCBh
dmFpbGFibGUgb24gYWxsIGRldmljZXMgb3IKPiBtYXliZSB0aGUgJ3BoeScgb25lPwo+Cj4gPiBG
b3IgZGV2aWNlcyB3aGVyZSBubyBsYWJlbCBNQUMgYWRkcmVzcyBoYXMgYmVlbiBzcGVjaWZpZWQs
IGhvc3RuYW1lCj4gPiBhbmQgU1NJRHMgd2lsbCB1c2UgdGhlIGZvcm1lciBkZWZhdWx0ICJPcGVu
V3J0Ii4KPgo+IEFuZCB0aGlzIGlzIHByb2JhYmx5IHRoZSBiaWdnZXN0IGlzc3VlIEkgaGF2ZSB3
aXRoIHRoZSB3aG9sZSBpZGVhIGJlaGluZAo+ICdsYWJlbF9tYWMnLiBBcyBJIHVuZGVyc3RhbmQg
dGhlIG1vdGl2YXRpb24sIEkgZG9uJ3QgbGlrZSB0aGUgZmFjdCBpdCdzCj4gbm90IHNwZWNpZmll
ZCAoYW5kIHByb2JhYmx5IHdvdWxkIG5ldmVyIGJlKSBmb3IgYWxsIGRldmljZXMgc28gd2Ugd2ls
bAo+IGhhdmUgaGVyZSBpbmNvbnNpc3RlbmN5IChpbiBlc3NlbnRpYWwgc3lzdGVtIHNldHRpbmdz
ISkgYW5kIG1pZ2h0IGVuZCB1cAo+IHdpdGggY29uZnVzaW9uLiBNYXliZSB0aGF0J3Mgc29tZXRo
aW5nIHdoaWNoIHNob3VsZCBiZSBoYW5kbGVkIGJ5Cj4gZG93bnN0cmVhbSB1c2Vycy9wcm9qZWN0
cyAoYW5kIEFGQUlLLCBpdCBpcyBhbHJlYWR5KS4KPgo+IC0tCj4gQ2hlZXJzLAo+IFBpb3RyCj4K
PiA+Cj4gPiBJbXBsZW1lbnRpbmcgdGhlIEVVSSBpcyBpbnRlbmRlZCB0byBtYWtlIGlkZW50aWZp
Y2F0aW9uIG9mIGEKPiA+IHBhcnRpY3VsYXIgT3BlbldydCBkZXZpY2UgZWFzaWVyLiBUaGUgbGFi
ZWwgTUFDIGFkZHJlc3MgcXVhbGlmaWVzCj4gPiBmb3IgdGhpcyBhcyBpdCBpcyBlYXNpbHkgdmlz
aWJsZSBvbiB0aGUgY2FzZSBhbmQgdGh1cyBhcHBhcmVudCB0bwo+ID4gYm90aCBlZHVjYXRlZCBh
bmQgdW5lZHVjYXRlZCB1c2Vycy4KPiA+Cj4gPiBBZHJpYW4gU2NobXV0emxlciAoMSk6Cj4gPiAg
ICBiYXNlLWZpbGVzOiByZW5hbWUgU1NJRCB3aXRoIEVVSSBvZiBtYWMgYWRkcmVzcwo+ID4KPiA+
IFJvc3kgU29uZyAoMSk6Cj4gPiAgICBiYXNlLWZpbGVzOiByZW5hbWUgaG9zdG5hbWUgd2l0aCBF
VUkgb2YgbWFjIGFkZHJlc3MKPiA+Cj4gPiAgIHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9iaW4v
Y29uZmlnX2dlbmVyYXRlICB8IDE2ICsrKysrKysrKysrKystCj4gPiAgIC4uLi9ldGMvdWNpLWRl
ZmF1bHRzLzE1X3dpZmktc3NpZC1tYWMtYWRkcmVzcyB8IDIyICsrKysrKysrKysrKysrKysrKysK
PiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL3VjaS1k
ZWZhdWx0cy8xNV93aWZpLXNzaWQtbWFjLWFkZHJlc3MKPiA+Cj4KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
