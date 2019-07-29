Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82843791D7
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 19:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=en1eXvDnytiYhI0VCRkgeZRLmgFy1PFqMEX50umJg1I=; b=T2eKCabtpjtFxL
	EkQ0Jywif6LdRttJ1W65TLJ3fzMJbr7PKEmQgZ8fE12PerPc3LaPAP2G3nCcLJgRd7APRpsHIskdx
	Do+ZmKN7O3aVRRVXzotd2CpKYg6z6N+BFRJl0tCx//vMXR9gvMziSEOuFeXoJyu0iE2QoldQiYgT+
	4eDqceP0pEfihNLqRo+5jWqUCicvEe6vENvBpggPSqL0zjwpjcORjaFEogHuOfT22B/esXDmaMvts
	KVqbLu/oSH7R8Z6jkY/fMWc42kVCRsunaz5bZtr2KVaObV2AKrdueuRrGxYS3jvy++YSgCihUFtP2
	0hrXlbSc/51T0LBXHVkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9EA-0004D9-VH; Mon, 29 Jul 2019 17:14:27 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9E1-0004Cm-C1
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 17:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564420450;
 bh=HiClaZbmoaYJOuZxpjWqfZe1vSUay6lBGJ1ONmcnenI=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:From;
 b=hfiQWgLEtSgmZ3fw3td38wyDFo080ImcZsdqz/C/np3Qmb9WIDX8n7yyKmRRUp0kj
 ccQWQYIi6iLljTUl3NMyXFeyHS/s0tTyaqcgsTyYYQ+1k8tB5z/7DfXfDjXYEbhJTY
 SFCngobckuriD7K2OzfrmyFb7aQuLPEYyYPnku4k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from android-5b0e629d1318b197.lan ([62.14.67.173]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MXqV1-1hugAn1A5X-00WjVF; Mon, 29 Jul 2019 19:14:10 +0200
Date: Mon, 29 Jul 2019 17:14:09 +0000
In-Reply-To: <CANoib0G+Oi38QN4UjwGxv0p1jm0vu-MZRbLtkoMi7Np9B6i95g@mail.gmail.com>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <CANoib0G+Oi38QN4UjwGxv0p1jm0vu-MZRbLtkoMi7Np9B6i95g@mail.gmail.com>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org, Dmitry Tunin <hanipouspilot@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Sebastian Kemper <sebastian_ml@gmx.net>
Message-ID: <7F300030-BD32-4324-A454-AF3A12695B2A@gmx.net>
X-Provags-ID: V03:K1:QDTswNOhQBtj04pEqIr69AAjTI2msshYVSxSIZeu0nuYOBFR+6W
 OhoqWN4+IFn7rz7TNRvWfub4bDEztgb9BrlqFJT6bENufdcGghHIsTgL0vs1Ch/+88NpY0c
 rEJDlTH1owd2hoq0MJLC7sJMmCofT0R5UXgxUvqfeK9iJtRNRA7cSS5z0/t2CN7+pzEvCJb
 Yrm2qQnDV+5THyLQ6MLLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OJ6HH7C8rjE=:WfCjIxEdNX5mZETX0hFQ4T
 VlyVkmHv9sl/GAxHFPz0SmqcqUqd6vNmq2/uAjNBwXmwBnJut0d0mhuejcByXT61LDBlELFX+
 2s5tnkpqyMB8ccHEDcASaS6vtwh1TXcQfOX/bfKyYJRyrAPkXqA0t2MkaadwBmOuzvC0fkNWW
 wpa2/sjsHtBTumFhIMfTYP//qDv4jRkr6QVZYmKudE062KKrGXJ2jMilGIhdokpTq3TsVGN/F
 Bxsb+/nIpI/qQNbb9Ux5p2AbSJbjWiwy3XZD39WZgpCt/TBiYxRByZu3sOyieIbkrUw8MKVrI
 quiVh0rBMQxfnwDzXumJZvQVJ8/tywm+I3fBMFxTU6NTRRV3e+AyIqB+RKuN3mHm7hL+gcwub
 JutzMgLZmNMnMr1t7AQK8kPC/18+Ktni66v3fiL6aScaPeysYkmdrfwukgTElHqMIy4pvtVxh
 kLfHkzhNQx8NBNujw2T+A3A4u/o28+8rv3q9OLzCjosJcxUbXj4T3++kACKw2y4C0HDmNhJBY
 f7mX3y3fHJ7+NgUlbBr6h9foQ39cY4R9qeG9DbhaGcLxSKXza/733BkrY/Ff06fgiTRl0nGbN
 2CtGjnRKY0jGkTedMMJFm2b6bZmcaJwVEkPFWg4JpZo6KjGp9PVR2J63Q3UpJS68VQmSpwzp8
 SuWlf7ywrk7uYcpq1cm/09ShJhZX4dlWNBiVJs49ImJrVoGPsFwDn8T+JtyBsrZ9dMYMXJCME
 hp7nt3T2n5RgzsrcKljGCgt+ZeKexPoP+cSeNvxH43dBV2lc+VpwSzmJO6AWHuETNGBTyaeKu
 CtL2TOjJt0zta0yaxWBbL8MaeHX6c2F7Ozo6sIGk3ntKnadz9ljReK6DmzSZFX9NDs3ofzA7E
 X9F+37E711nsjv4kO1Fjh8BgjKR6zXT7H/Lioz/A+bI5VPmCSn4cpPkAve3bs7cDbqbq3Gx4e
 WeUIUBRUYD4C809JloNoxyfNQYZZUZIPGMSlHOPOLqXncQG4S53tzpau37oH4VjLkL7BP04Uf
 a2JE7SLde1t1BmgHeMDtJeiFX4c9qb8prUVOqC9rE0J2OSGsWtC/7ZaOhRmjtBR8E0fHaL9zJ
 DGyZ6fUiJ1fLelQ33YxVPEeC2IU4vNEPbQk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_101417_750225_CBA1CB16 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gSnVseSAyOSwgMjAxOSA0OjMwOjMzIFBNIFVUQyBzY2hyaWViIERtaXRyeSBUdW5pbiA8aGFu
aXBvdXNwaWxvdEBnbWFpbC5jb20+Ogo+VGhlcmUgaXMgYWxzbyBhIGZldyBkZXZpY2VzIHRoYXQg
aGF2ZSBiZWVuIHJlY2VudGx5IGFkZGVkIGFzIGF0aDc5Cj5vbmx5LiBTbyB0aGV5IHdvbid0IGJl
IHN1cHBvcnRlZC4KPgo+0L/QvSwgMjkg0LjRjtC7LiAyMDE5INCzLiDQsiAxOToyOCwgRG1pdHJ5
IFR1bmluIDxoYW5pcG91c3BpbG90QGdtYWlsLmNvbT46Cj4+Cj4+IDJiMDc0NjU0YjBmMjU5NTE4
YWE1NmUwOTc1Y2E4ZTI2YzBjMTJiYzkKPj4KPj4gSSBzZWUgbm8gcmVhc29uIHdoeSBub3QgdG8g
YnVpbGQgYm90aCBhcjcxeHggYW5kIGF0aDc5IGZvciBkZXZpY2VzCj4+IHRoYXQgaGF2ZSBiZWVu
IHBvcnRlZCB0byBhdGg3OSBhbHJlYWR5LiBNYW55IHBlb3BsZSBhbHJlYWR5IHVzZSAxOS4wNwo+
PiBicmFuY2ggYW5kIHdhaXQgZm9yIHRoZSByZWxlYXNlLgo+Pgo+PiBUaGF0IHdpbGwgcmVxdWly
ZSBsb3RzIG9mIGN1c3RvbSBidWlsZHMuIFdoYXQgaXMgdGhlIHBvaW50IG9mCj5leGNsdWRpbmcg
YXRoNzk/Cj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj5vcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwo+aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwKCkdvb2QgcG9pbnRzLiBJJ2QgbGlrZSB0byBzZWUgYXRoNzkgYnVpbGRzIGZvciAxOS4w
NyBhcyB3ZWxsLiBBbmQgZXZlbiBpZiB0aGF0IG1lYW5zIG1vcmUgc3RyZXNzIG9uIHRoZSBidWls
ZCBib3RzIGl0J2QgYmUgb25seSBldmVyeSBwb2ludCByZWxlYXNlLCBub3QgY29uc3RhbnRseS4g
QXQgbGVhc3QgdGhhdCdzIG15IHVuZGVyc3RhbmRpbmcuCgpKdXN0IG15IG9waW5pb24uIEkgZG9u
J3QgaGF2ZSB2b3RpbmcgcmlnaHRzIDotKQoKS2luZCByZWdhcmRzLApTZWIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
