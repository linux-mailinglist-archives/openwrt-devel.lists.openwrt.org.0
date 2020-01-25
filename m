Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16ED149826
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Jan 2020 00:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf4Jp9FFDLQPBl1iEX8rbcPWO5+hx4XOeIzLCVJ3dlY=; b=PoUwyoUPAfpO3e
	I1y4R8Dt9rTjiDKcGgj6bppjJUhLs8Fui7As3vsiZA4ZSE2x2XXgcadUH3fbzudn4wAcb4xjBT2Qg
	Gcy9QpV2HRahS1nxAwHBWECib1ui+Q6oU49Crif3IbrS5xu0B/OUmBte6MO1TlZqOKqNSI1zCSXpx
	KbKnac1P3IcFa0rW0NPy1jUKIOcuHOqlhu/+xGcKe57qN+/8kgDAQxgGGBD9S2wfLDWJvFKlDCqfF
	DDExnG4HuyG1mbwAgJvWvHbOQJGsyrjmuASJ3Ejo5g6uLarB3rtPsMPzPbC8lVODkD+cWdszUU0+q
	Li7StAcawOACObAiMeyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivUTX-0002UG-B7; Sat, 25 Jan 2020 23:04:23 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivUTR-0002To-Az
 for openwrt-devel@lists.openwrt.org; Sat, 25 Jan 2020 23:04:19 +0000
Received: by mail-ot1-x343.google.com with SMTP id h9so5082361otj.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Jan 2020 15:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ql4J8LXHGlz8u15DVRSH985vw2IoJCfKoNwghoiG1y0=;
 b=VWzu7pTqhyh57kM9b+RPgGAahxNBp7P+b7fTk+bqz8ot4yBO92e+747V+XsWLWvwsu
 ynGJsEJ0QuqQkLvmNm9scRqrlwIjxUSo8sPwcPXNyi1hy/Aw4v4ADWoOnDkZP9WBcv6o
 kdeH2SPiPU5kPIwPDkz0J/XLO/BljzoPQFUIU2onud66ltdpbL66ItJiwQApiw2/bTFO
 uxCohevlvw8R7JQRunEMvQMgBINdGktFXPmCBkOD5TqnzK6zo3zsoDG0A7wcZUlQHS46
 XV81PeeFdlrblf6+Jc/dNcSKsJWfVC+q8BqqqzJ59VkizrnY0zF0ZZ/Zi15QqzDOS+UV
 OPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ql4J8LXHGlz8u15DVRSH985vw2IoJCfKoNwghoiG1y0=;
 b=IbJA2Sn/aLIPD+dsMsqJ9mu0wPBhsas5hfdJM/wpVTJq1qiAC3n6l6MrZGy3CKqlLs
 +DzGeLWIu49HUjDELAUSGtZcJZf5JAaiLrfENM0XVTOGwbwDFk4v7yeVXg4vwZUCVqu0
 Y0QQsNwSYAK7ETqYVEGOl2RCqcUt2oPHUvNkgZrI4E1u+JRDSTf1fqtRnx98oY9TMITn
 clwvm6zlKhHlDjhr4wg7ynKhqykRKYCB1QSPbKFsDFGTUbLILpH/6AnKQmaFVYIVwMuD
 l2c4szqIVWmSUPROHMZ/9Ko2V2FKP0+vjJUw7ER/VbGxr3Eg2nx8/FQOSsv3u8391e07
 iQ4A==
X-Gm-Message-State: APjAAAXWBSZn0Gox9MF9UdpSTDVlf2kx9D8naDhIOCCB05i09sOUvZH2
 0BqmkhKXDT52WoYf/pEynCsQcirzOyHz5m6f69K5fQ==
X-Google-Smtp-Source: APXvYqyieQJBftWOafAPRQ2FKVui9/VhfG2tUAUXM+h+VwPMOo8bJtSr1VrR51G2JX8TwDj49zexOsrrPLhMynt98Fo=
X-Received: by 2002:a9d:6c9a:: with SMTP id c26mr3706774otr.279.1579993454400; 
 Sat, 25 Jan 2020 15:04:14 -0800 (PST)
MIME-Version: 1.0
References: <20200122230022.16876-1-rosenp@gmail.com>
 <87h80mfukb.fsf@miraculix.mork.no>
In-Reply-To: <87h80mfukb.fsf@miraculix.mork.no>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 25 Jan 2020 15:04:03 -0800
Message-ID: <CAKxU2N-BcqJp6jiKz7mjFN0BujjQOMEv39jSffxCEKuKhZg2Qw@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_150417_409259_CF97EA67 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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

T24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMTI6MjUgQU0gQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsu
bm8+IHdyb3RlOgo+Cj4gUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IHdyaXRlczoKPgo+
ID4gU2V2ZXJhbCB1c2VycyBoYXZlIGJlZW4gcmVwb3J0aW5nIGNyYXNoaW5nIGlzc3VlcyB3aXRo
IHRoZSBldGhlcm5ldAo+ID4gZHJpdmVyLgo+ID4KPiA+IE9uZSBzb3VyY2Ugc2F5cyB0aGF0IHRo
aXMgaXMgYSBzaWxpY29uIGJ1ZyBpbiBtdDc2MjE6Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vb3Bl
bndydC9tdDc2L2lzc3Vlcy8yMTEjaXNzdWVjb21tZW50LTU2OTY4NzUwNgo+ID4KPiA+IEEgdXNl
ciB0aGF0IGhhcyBiZWVuIHRlc3RpbmcgdGhpcyBoYXMgc2VlbiBncmVhdGVyIHRoYW4gMi0zIGRh
eXMgdXB0aW1lCj4gPiBvZiB0aGUgZXRoZXJuZXQgaW50ZXJmYWNlIHdpdGggdGhpcyBjaGFuZ2U6
Cj4gPiBodHRwczovL2ZvcnVtLm9wZW53cnQub3JnL3QvbXRrLXNvYy1ldGgtd2F0Y2hkb2ctdGlt
ZW91dC1hZnRlci1yMTE1NzMvNTAwMDAvMTIKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQ
ZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9maWxlcy00LjE0L2RyaXZl
cnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEuYyAgICAgfCA0ICsrLS0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVkaWF0ZWsvZ3N3X210NzYyMS5jIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxlcy00
LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEuYwo+ID4gaW5kZXgg
ODliZTIzOTAwNy4uYmQwZTU1NWUzNSAxMDA2NDQKPiA+IC0tLSBhL3RhcmdldC9saW51eC9yYW1p
cHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9nc3dfbXQ3NjIxLmMK
PiA+ICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9ldGhl
cm5ldC9tZWRpYXRlay9nc3dfbXQ3NjIxLmMKPiA+IEBAIC05OCw4ICs5OCw4IEBAIHN0YXRpYyB2
b2lkIG10NzYyMV9od19pbml0KHN0cnVjdCBtdDc2MjBfZ3N3ICpnc3csIHN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnApCj4gPiAgICAgICBtdDc1MzBfbWRpb193MzIoZ3N3LCAweDcwMDAsIDB4Myk7Cj4g
PiAgICAgICB1c2xlZXBfcmFuZ2UoMTAsIDIwKTsKPiA+Cj4gPiAtICAgICBpZiAoKHJ0X3N5c2Nf
cjMyKFNZU0NfUkVHX0NISVBfUkVWX0lEKSAmIDB4RkZGRikgPT0gMHgwMTAxKSB7Cj4gPiAtICAg
ICAgICAgICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBGQyBPTiwgTUFYX1JYX0xFTkdUSCAx
NTM2KSAqLwo+ID4gKyAgICAgaWYgKChydF9zeXNjX3IzMihTWVNDX1JFR19DSElQX1JFVl9JRCkg
JiAweEZGRkYpID49IDB4MDEwMSkgewo+ID4gKyAgICAgICAgICAgICAvKiAoR0UxLCBGb3JjZSAx
MDAwTS9GRCwgRkMgT0ZGLCBNQVhfUlhfTEVOR1RIIDE1MzYpICovCj4gPiAgICAgICAgICAgICAg
IG10a19zd2l0Y2hfdzMyKGdzdywgMHgyMzA1ZTMwYiwgR1NXX1JFR19NQUNfUDBfTUNSKTsKPiA+
ICAgICAgICAgICAgICAgbXQ3NTMwX21kaW9fdzMyKGdzdywgMHgzNjAwLCAweDVlMzBiKTsKPiA+
ICAgICAgIH0gZWxzZSB7Cj4KPiBJZiB0aGF0J3MgcmVhbGx5IGhlbHBpbmcgdGhlbiBJIGJlbGll
dmUgaXQgd291bGQgYmUgdXNlZnVsIHRvIGFkZCBzb21lCj4gc29ydCBvZiBjaGlwX3Jldl9pZCBw
cmludGsgaGVyZS4gIFdvdWxkIGJlIGdvb2QgdG8ga25vdyB3aG8gaGl0cyB0aGlzCj4gYW5kIHdo
eS4uLgpUaGF0J3MganVzdCBjb3NtZXRpYy4KClNwZWN1bGF0aW9uIG9uIHdoeSBpcyBwcm92aWRl
ZCBpbiB0aGUgZmlyc3QgbGluay4KCkluIHRoZSBzZWNvbmQgbGluaywgcGVvcGxlIGFyZSByZWFs
bHkgaW50ZXJlc3RlZCBpbiBnZXR0aW5nIHRoaXMgaW4uClVwdGltZSBpcyBjdXJyZW50bHkgYXQg
MTAgZGF5cy4KPgo+Cj4gQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
