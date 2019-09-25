Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CE4BD60E
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 03:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1VPmGXsi6Tqs2kWtZPUYR7sguS2DgD4n8bPUH0L2+c=; b=Bzj4oTuW3NlcJy
	0xqE/8rkQrI/074q59E36OEZ1hzIIftoOsxbJBpOSOAsboO/PN64zDbnmxOP1dkRAjcptnmGMkoen
	iilXWuPmat+gQf/YMuH6xwihdbu9KrCg2unmp5uwC5uvpmFuv0Q1L2sMsSP9IpkTPHqFGC/TbNd2h
	bpHxXeAEGopTOnFDZjtbq5wdlFwpYe7Brvt+K/DxiXQ7w3TRkANsueAMQDMxse1wS10HQmdnJXEZA
	xiXXLp1t98lcWqtsQBnAfUsAuo6mn6688EDzlOl+pCj3hJCzzLvh/w35nhu68jVl0GiHMV1K6tflP
	qHFDQoj5bGAxrYVdWAgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCvxV-0007MZ-GZ; Wed, 25 Sep 2019 01:19:09 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCvx8-0007Lv-NM
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 01:18:48 +0000
Received: by mail-qk1-x743.google.com with SMTP id u22so3809134qkk.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 18:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sQEYciuQaj8zDjkJCBWrZvmPURCcm/jr94vPszY4/Ik=;
 b=D5zNFSgGsaKKdNfz6LxXa3SpQ+31bkiKZ43Dm1ngKnN/CNW/IbqX2xpVa3WrHc2mD0
 kY3GrZ99dilr49WOFcpqWfQ1NSZLMCt2vnbrpyP4/TjV1IrP+8e9dMgq3tnZ/E1gIdmC
 mBuKcbzYViQ0XEEPv5NauLtzTzEzp69PRpmt6ix6zS21tZmnOb3jRkEyrb1OGOz/H5dr
 WOw8O2n72kWFKqtJetmR4tdkn8y79EiQlTcFSwUHs/PwqRivOfdn0VgSYWAVDggzcBZR
 1JQ64YDvNbUyiLog1kixR430JrBXK2gv29xh2ublOh1UHhFR20Ysu2ag4J0n7xNCRFCd
 xKyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sQEYciuQaj8zDjkJCBWrZvmPURCcm/jr94vPszY4/Ik=;
 b=c5nlW8C2OIC/4o6LTYvjCfG0EoDGuvmFDOrykGn29mTvsHCMkfVPA984lG2ryUeqxG
 QnR0d6y/11oWEHuR9QtxagzOETB2jslUfipExC4hTSWe00mOA91C3SozAYfEmKsrcvj5
 D1BRntLpideCOgpXWy7D2GvaEZX1pt/5DvtLkb+O8zz6TEHEjv7YsZsW2748VfDRFwnW
 82GXHI09v1D6ZgbWYHQ3q5wlJm8gJYCZBA5f2vcpupcHQ3sJB3T1idZpv/tZG7bsNrxk
 Az/oZaUJ6451lllcwok74LxahA529qvFhJaTGtXsrRLHvgSyFK4jZvaISyzJFmI4P85+
 kuAw==
X-Gm-Message-State: APjAAAWzRFfBa9wQ4HFr+3SAJXPZF4r3IsAtHNUak8huRYfKL6YPoI5c
 BsDMcPjxSEBcJ2CA7d9IA4T3o+H/vpCblMF/3Qk=
X-Google-Smtp-Source: APXvYqzExc7FKWp3rkyXE4s1WZH0DD+jIHCCjiRXXIN0VKeURm1hes4fj9FkssVLspui4M1J+yUYjB6jeLX/53GeRnU=
X-Received: by 2002:a37:2746:: with SMTP id n67mr1189627qkn.368.1569374325565; 
 Tue, 24 Sep 2019 18:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190923073539.7493-1-ynezz@true.cz>
 <20190923073937.7890-1-ynezz@true.cz>
 <CAPxccB3ZF_E5UXgoha6hqnMcktWqY6N4uS6J7x714CPvC_XW0g@mail.gmail.com>
 <20190924204151.GE40628@meh.true.cz>
 <CAPxccB1ZGFx_i6moidZxh_cwmS_QGmrvvP_e1hCdyvHdBbnOAw@mail.gmail.com>
 <20190924220744.GF40628@meh.true.cz>
In-Reply-To: <20190924220744.GF40628@meh.true.cz>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Tue, 24 Sep 2019 22:18:31 -0300
Message-ID: <CAPxccB31YzF4JMM-v9vYEKURN6jtKYZ2XBnNL0-Zv-P3dcTsQA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_181846_785775_FF46FE16 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: fix make kernel_menuconfig
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Thomas Albers <thomas.gameiro@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgNzowNyBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IEVuZWFzIFF1ZWlyb3ogPGNvdGVxdWVpcm96QGdtYWlsLmNvbT4gWzIw
MTktMDktMjQgMTg6Mjg6NDRdOgo+Cj4gPiBJJ3ZlIGdvdCB5b3VyIHBhdGNoIGFwcGxpZWQsIGFu
ZCBpdCBzdGlsbCBmYWlscyBtYWtlIG1lbnVjb25maWcgaWYgSQo+ID4gc3RhcnQgZnJvbSBzY3Jh
dGNoIG9yIGFmdGVyIG1ha2UgLUMgc2NyaXB0cy9jb25maWcgY2xlYW4uICBJIGhhdmVuJ3QKPiA+
IHRyaWVkIGtlcm5lbF9tZW51Y29uZmlnIHlldC0taXQgd2lsbCBoYXZlIHRvIGNvbXBpbGUgYSBs
b3Qgb2Ygc3R1ZmYgaWYKPiA+IEkgc3RhcnQgZnJlc2guCj4KPiBPaywgbXkgYmFkLCBJIGNhbid0
IHJlYWQgcHJvcGVybHksIHlvdSdyZSB0YWxraW5nIGFib3V0IGBtYWtlIG1lbnVjb25maWdgIGJ1
dAo+IEkndmUgYXNzdW1lZCBgbWFrZSBrZXJuZWxfbWVudWNvbmZpZ2AgOi0pCj4KPiBTbyBhcyB0
aGUgY29tbWl0IHN1YmplY3RbMV0gc2F5cyBgYnVpbGQ6IGZpeCBtYWtlIGtlcm5lbF97bWVudSxu
fWNvbmZpZyBgIHRoaXMKPiBwYXRjaCBpcyBhYm91dCBmaXhpbmcgb25seSBrZXJuZWxfe21lbnUs
bn1jb25maWcgdGFyZ2V0cywgbm8gZGVzaXJlIHRvIGZpeAo+IG90aGVyIGJyb2tlbiB0YXJnZXRz
Lgo+Cj4gPiBXaGF0IGRvIHlvdSB0aGluaz8KPgo+IFRoYXQgaXQgc2hvdWxkIGJlIHByb2JhYmx5
IGZpeGVkIGluIGEgc2ltaWxhciBtYW5uZXIgYXMgdGhlIG90aGVyIGJyb2tlbgo+IGNvbmZpZyB0
YXJnZXRzLCBwZXJoYXBzIHNvbWV0aGluZyBsaWtlIHRoaXMgd291bGQgd29yaz8KPgo+ICBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS90b3BsZXZlbC5tayBiL2luY2x1ZGUvdG9wbGV2ZWwubWsKPiAgaW5k
ZXggMTI1ODZlODdjMDlhLi4yYjNiNTVkYjlmNzUgMTAwNjQ0Cj4gIC0tLSBhL2luY2x1ZGUvdG9w
bGV2ZWwubWsKPiAgKysrIGIvaW5jbHVkZS90b3BsZXZlbC5tawo+ICBAQCAtOTksNiArOTksOSBA
QCBwcmVwYXJlLXRtcGluZm86IEZPUkNFCj4gICAgICAgICAgICAgICAgICQoX1NJTkdMRSkkKE5P
X1RSQUNFX01BS0UpIG1lbnVjb25maWcgJChQUkVQX01LKTsgXAo+ICAgICAgICAgZmkKPgo+ICAr
aWZuZXEgKCQoRElTVFJPX1BLR19DT05GSUcpLCkKPiAgK3NjcmlwdHMvY29uZmlnL21jb25mOiBl
eHBvcnQgUEFUSDo9JChkaXIgJChESVNUUk9fUEtHX0NPTkZJRykpOiQoUEFUSCkKPiAgK2VuZGlm
Cj4gICBzY3JpcHRzL2NvbmZpZy9tY29uZjoKPiAgICAgICAgIEAkKF9TSU5HTEUpJChTVUJNQUtF
KSAtcyAtQyBzY3JpcHRzL2NvbmZpZyBhbGwgQ0M9IiQoSE9TVENDX1dSQVBQRVIpIgo+Cj4gQW55
d2F5LCBJJ3ZlIGFscmVhZHkgZGVsZXRlZCBteSB0ZXN0aW5nIEdlbnRvbyBEb2NrZXIgaW1hZ2Ug
YW5kIGRvbid0IHdhbnQgdG8KPiBlbWVyZ2UgYSBuZXcgb25lIGluIGZvcmVzZWVhYmxlIGZ1dHVy
ZSwgc28gaXQgd291bGQgYmUgbmljZSBpZiB5b3UgY291bGQKPiBzaW1wbHkgY29uZmlybSwgdGhh
dCBteSBwcm9wb3NlZCBwYXRjaFsxXSBpcyBvayBhbmQgd29ya3MsIEknbGwgbWVyZ2UgaXQKPiB0
b21vcnJvdyBhbmQgdGhlbiB5b3UgY2FuIGFkZCB5b3VyIGZpeChlcykgb24gdG9wIG9mIHRoYXQs
IHdoYXQgZG8geW91IHRoaW5rPwo+Cj4gMS4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53
cnQvY29tbWl0LzBhMjBhM2MwODY1MmFmMGQyMWFjY2FlNmU3NmU4OTQ2Y2I0YzFiODQKPgo+IC0t
IHluZXp6CgpJJ3ZlIGFwcGxpZWQgYm90aCB5b3VyIHBhdGNoZXMgKFsxXSBwbHVzIHRoZSBvbmUg
aW5saW5lKSwgYW5kIHRlc3RlZAp3aXRoIGFsbCB0aHJlZSBhZmZlY3RlZCB0YXJnZXRzLCBhbmQg
dGhleSdyZSBhbGwgd29ya2luZyBub3cuCgpUZXN0ZWQtYnk6IEVuZWFzIFUgZGUgUXVlaXJveiA8
Y290ZXF1ZWlyb3pAZ21haWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
