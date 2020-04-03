Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F009D19D369
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 11:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQKcdtQW+4Y6jQ0PBiqeO9T3iMg30xQBQDrOjL3x+jU=; b=tzCoWLurCGHm7f
	OgDY7qf8iZXCEFWeIarPyRqGTDcq34rpYtZAA094WNfTbrlWYSF2YaBvb4tbPcCveF4gwIDaw3X+D
	bzjwNA9avnmLWR6XgPptcgYUirJneKZ3TO6C4JuPydGU2lAy7/AjgJRhlmIzbEhulpIqaTN/bDIaA
	tJwpSLeNZxoIFINHlTTNMSw4V7DmoYlHKtAPI1hZrEeEKowX0NBLX+pat41u7FnWsG5T/S9h42bAD
	3efv+gom9YyaDcJmo5tlPfJULtnI6XsaqMoLQIyizVlFkF0fmk/4CPJfbEuFEOy/ddz+gpaUXaYCQ
	3/4as0HNxgxye5KYrkmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIWh-0001hb-7w; Fri, 03 Apr 2020 09:22:11 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIWa-0001hF-C2
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 09:22:06 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 0339LwUb028808
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 3 Apr 2020 11:21:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1585905718; bh=MMZVTHBZIUqHrPGp6eW3RlIblobhty+R4N0u8maz7o8=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=nDZwjPaQIc8S6P8/VKHRKgGFMPx4lqByOR4iVaXZ1WRH84dFQSNOCQFdXJWjg3ZwF
 9kCcCjEjBlwOGAi/2iTJ1vrcTMDZyLsdhze+VIiU7uLDfi1Cs4Uqt9/ewzi3JeMojM
 Py/AeABmvgMsNJmv+wCFYmGdclXaRHmRJgi64lQ8=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jKIWT-0004U1-Tv; Fri, 03 Apr 2020 11:21:57 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: David Bauer <mail@david-bauer.net>
Organization: m
References: <20200402195359.51545-1-mail@david-bauer.net>
Date: Fri, 03 Apr 2020 11:21:57 +0200
In-Reply-To: <20200402195359.51545-1-mail@david-bauer.net> (David Bauer's
 message of "Thu, 2 Apr 2020 21:53:59 +0200")
Message-ID: <87k12wx6tm.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022204_745145_1D1C790C 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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

RGF2aWQgQmF1ZXIgPG1haWxAZGF2aWQtYmF1ZXIubmV0PiB3cml0ZXM6Cgo+IEFzIHRoZSByZXBv
cnRlZCBtYWpvciBidWdzIGFyZSBpcm9uZWQgb3V0LCBzd2l0Y2ggdG8gdGhlIG5ldyBrZXJuZWwg
dG8KPiBiZWdpbiB0ZXN0aW5nIHdpdGggYSBicm9hZGVyIGF1ZGllbmNlLgoKCkhtbS4uLiBJIHdv
bmRlciBpZiB5b3UgbWlnaHQgd2FudCB0byBob2xkIGJhY2sgb24gdGhhdCBmb3IgYSB3aGlsZS4K
CkkgaGF2ZSBubyB1c2VmdWwgaW5mbyB5ZXQgc2luY2UgSSBkb24ndCBoYXZlIGNvbnNvbGUgYWNj
ZXNzIG9uIHRoaXMKZGV2aWNlLCBidXQgSSBqdXN0IGxvc3QgbmV0d29yayBhY2Nlc3MgdG8gYSBV
bmlGaSBBUCBBQyBQUk8gYWZ0ZXIgdHJ5aW5nCm91dCBjdXJyZW50IG1hc3RlciAoZmNkMTQwMTcw
MDdkKS4KCkknbGwgc2VlIHdoYXQgSSBjYW4gZ2V0IG91dCBvZiBpdCwgYnV0IEkgZG9uJ3QgcHJv
bWlzZSBhbnl0aGluZyBpZiBJCmNhbid0IGZpZ3VyZSBvdXQgYSB3YXkgdG8gZ2V0IG5ldHdvcmsg
YWNjZXNzLiBUaGUgQVAgaXMgbG9jYXRlZApzZW1pLW91dGRvb3JzIHNvIEkgZG9uJ3QgcmVhbGx5
IHdhbnQgdG8gb3BlbiBpdCBhbmQgYnJlYWsgdGhlIHNlYWwuLgoKClRoZSBBUCByYW4gYSBzaW1p
bGFyIGFyYml0cmFyeSBtYXN0ZXIgY2hlY2tvdXQgZnJvbSBKYW51YXJ5IGJlZm9yZQp1cGdyYWRp
bmcgKGIwNzAxMDFjNTA2YyksIGhhdmluZyBhIHY0LjE5LjkzIGtlcm5lbC4gSSB1cGdyYWRlZCB1
c2luZwonc3lzdXBncmFkZSAtdiAuLi4nIGluIGEgc2hlbGwsIGtlZXBpbmcgZXhpc3RpbmcgY29u
ZmlncywgYXMgSSB1c3VhbGx5CmRvIHVubGVzcyB0b2xkIG5vdCB0byA7LSkKClRoZSBwYXJ0IG9m
IHRoZSB1cGdyYWRlIHdoaWNoIGlzIHZpc2libGUgdmlhIHNzaCBsb29rZWQgZmluZToKCiAgX19f
X19fXyAgICAgICAgICAgICAgICAgICAgIF9fX19fX19fICAgICAgICBfXwogfCAgICAgICB8Li0t
LS0tLi0tLS0tLi0tLS0tLnwgIHwgIHwgIHwuLS0tLS58ICB8XwogfCAgIC0gICB8fCAgXyAgfCAg
LV9ffCAgICAgfHwgIHwgIHwgIHx8ICAgX3x8ICAgX3wKIHxfX19fX19ffHwgICBfX3xfX19fX3xf
X3xfX3x8X19fX19fX198fF9ffCAgfF9fX198CiAgICAgICAgICB8X198IFcgSSBSIEUgTCBFIFMg
UyAgIEYgUiBFIEUgRCBPIE0KIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiBPcGVuV3J0IFNOQVBTSE9ULCByMTE5OTgtYjA3MDEwMWM1MDZjCiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpyb290
QHVuaWZpYWMyOn4jIHN5c3VwZ3JhZGUgLXYgaHR0cDovL293cnQubW9yay5uby9sZWRlL3IxMjc5
My1mY2QxNDAxNzAwN2QvdGFyZ2V0cy9hdGg3OS9nZW5lcmljL29wZW53cnQtc25hcHNob3QtYXRo
NzktZ2VuZXJpYy11Ym50X3VuaWZpYWMtcHJvLXNxdWFzaGZzLXN5c3VwZ3JhZGUuYmluCkRvd25s
b2FkaW5nICdodHRwOi8vb3dydC5tb3JrLm5vL2xlZGUvcjEyNzkzLWZjZDE0MDE3MDA3ZC90YXJn
ZXRzL2F0aDc5L2dlbmVyaWMvb3BlbndydC1zbmFwc2hvdC1hdGg3OS1nZW5lcmljLXVibnRfdW5p
ZmlhYy1wcm8tc3F1YXNoZnMtc3lzdXBncmFkZS5iaW4nCkNvbm5lY3RpbmcgdG8gMTkyLjE2OC45
OS4xOjgwCldyaXRpbmcgdG8gJy90bXAvc3lzdXBncmFkZS5pbWcnCi90bXAvc3lzdXBncmFkZS5p
bWcgIDEwMCUgfCoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKip8ICA1MDU2ayAgMDowMDow
MCBFVEEKRG93bmxvYWQgY29tcGxldGVkICg1MTc4MTM5IGJ5dGVzKQpTYXZpbmcgY29uZmlnIGZp
bGVzLi4uCmV0Yy9jb25maWcvZGhjcApldGMvY29uZmlnL2Ryb3BiZWFyCmV0Yy9jb25maWcvZmly
ZXdhbGwKZXRjL2NvbmZpZy9sbGRwZApldGMvY29uZmlnL25ldHdvcmsKZXRjL2NvbmZpZy9uZXR3
b3JrLnNhdmUKZXRjL2NvbmZpZy9zeXN0ZW0KZXRjL2NvbmZpZy91Ym9vdGVudgpldGMvY29uZmln
L3dpcmVsZXNzCmV0Yy9jcm9udGFicy9yb290CmV0Yy9kcm9wYmVhci9hdXRob3JpemVkX2tleXMK
ZXRjL2Ryb3BiZWFyL2Ryb3BiZWFyX3JzYV9ob3N0X2tleQpldGMvZ3JvdXAKZXRjL2hvc3RzCmV0
Yy9pbml0dGFiCmV0Yy9vcGtnL2tleXMvMGIyNmYzNmFlMGY0MTA2ZApldGMvb3BrZy9rZXlzLzEw
MzVhYzczY2M0ZTU5ZTMKZXRjL29wa2cva2V5cy81MTUxZjY5NDIwYzNmNTA4CmV0Yy9vcGtnL2tl
eXMvNzJhNTdmMjE5MWIyMTFlMApldGMvb3BrZy9rZXlzLzc5MmQ5ZDliMzlmMTgwZGMKZXRjL29w
a2cva2V5cy85OWRiMWUwOTk2Njg1MDIzCmV0Yy9vcGtnL2tleXMvOWVmNDY5NDIwODEwMmM0Mwpl
dGMvb3BrZy9rZXlzL2IyNmYzNmFlMGY0MTA2ZApldGMvb3BrZy9rZXlzL2IyZDU3MWUwODgwZmY2
MTcKZXRjL29wa2cva2V5cy9iNTA0M2U3MGY5YTc1Y2RlCmV0Yy9vcGtnL2tleXMvYjcyYWE5NmIy
OTE3MTljYwpldGMvb3BrZy9rZXlzL2MxMGI5YWZhYjE5ZWU0MjgKZXRjL29wa2cva2V5cy9kYWNl
OWQ0ZGYxNjg5NmJmCmV0Yy9vcGtnL2tleXMvZGQ2ZGUwZDA2YmJkM2Q4NQpldGMvb3BrZy9rZXlz
L2Y5NGI5ZGQ2ZmViYWM5NjMKZXRjL3Bhc3N3ZApldGMvcHJvZmlsZQpldGMvcmMubG9jYWwKZXRj
L3NoYWRvdwpldGMvc2hlbGxzCmV0Yy9zeXNjdGwuY29uZgpDb21tZW5jaW5nIHVwZ3JhZGUuIENs
b3NpbmcgYWxsIHNoZWxsIHNlc3Npb25zLgpDb25uZWN0aW9uIHRvIHVuaWZpYWMyIGNsb3NlZCBi
eSByZW1vdGUgaG9zdC4KQ29ubmVjdGlvbiB0byB1bmlmaWFjMiBjbG9zZWQuCgoKClRoZXJlIGlz
bid0IGFueXRoaW5nIG91dCBvZiB0aGUgb3JkaW5hcnkgaW4gbXkgY29uZmlncyBBRkFJSy4gVGhl
ICJtYWluIgpldGhlcm5ldCBwb3J0IGlzIGNvbm5lY3RlZCB0byBhbiB1bm1hbmFnZWQgbWVkaWEg
Y29udmVydGVyLCB1c2luZyAzCnRhZ2dlZCBWTEFOcyBmb3IgQVAgbWFuYWdlbWVudCBhbmQgdHdv
IHdsYW4gYnJpZGdlcy4gVGhlIHNlY29uZCBldGhlcm5ldApwb3J0IGlzIG5vdCBjb25uZWN0ZWQu
ICBJJ3ZlIHRyaWVkIGFjY2Vzc2luZyAxOTIuMTY4LjEuMSB1bnRhZ2dlZCwgaW4KY2FzZSB0aGUg
bmV0d29yayBjb25maWcgc29tZWhvdyByZXZlcnRlZCB0byBkZWZhdWx0LCBidXQgdGhlcmUgd2Fz
bid0CmFueXRoaW5nIHJlc3BvbmRpbmcgdG8gYXJwcyB0aGVyZSBlaXRoZXIuCgpEbyB5b3UgaGF2
ZSBhbnkgc3VnZ2VzdGlvbnMgYXMgdG8gd2hhdCBjb3VsZCBoYXZlIGdvbmUgd3Jvbmc/ICBJdCB3
b3VsZApoZWxwIHRvIGtub3cgaWYgSSBzaG91bGQgaGF2ZSBleHBlY3RlZCBzb21lIGNoYW5nZXMg
dG8gdGhlIG5ldHdvcmsKY29uZmlnIC0gSSBjYW4gd29yayB3aXRoIHRoYXQuIEFsc28gdXNlZnVs
IHRvIGtub3cgaWYgdGhlcmUgaXMgYSBmbGFzaApyZWxhdGVkIGlzc3VlIG9yIHNvbWUgY3Jhc2gg
dG8gYmUgZXhwZWN0ZWQuCgpBbmQgbm8gbmVlZCB0byB3b3JyeSBhYm91dCBtZSAtIEknbSB3cml0
aW5nIHRoaXMgRllJIGluIGNhc2UgeW91IHdhbnQgdG8KZGVsYXkgYnJvYWRlbmluZyB0aGUgNS40
IHRlc3RpbmcuCm9ubHkuICBJIGFtIHByZXR0eSBzdXJlIEkgY2FuIHJldml2ZSB0aGUgQVAgYnkg
dGVtcG9yYXJpbHkgcmV2ZXJ0aW5nIHRvCnZlbmRvciBmaXJtd2FyZSB1c2luZyBib290bG9hZGVy
IHRmdHAuICBBbmQgdGhlbiByZWluc3RhbGwgYSBrbm93bgp3b3JraW5nIE9wZW5XcnQgaW1hZ2Uu
ICBCdXQgdGhpcyB3aWxsIG9idmlvdXNseSBwcmV2ZW50IGFueSBmdXJ0aGVyCmRlYnVnZ2luZywg
c28gSSdsbCBob2xkIG9uIGZvciBhIHdoaWxlIGJlZm9yZSBkb2luZyB0aGF0LgoKCgoKQmrDuHJu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
