Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C16E158A0B
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 07:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgMCxP07AggBBrc32nEDrt7YXZazAbwMGZgaEpRiUb8=; b=JUV6Y3jEtiLQXA
	umktD490zO9iC2e+Pg25m7lKQ2Yr4t0UYOc6qnZDFCUdFL7dramkwhZ1YMO4FUyJ28iDupGaFmjrT
	JdmlmtnN4yLW1fQOPbPS/Ykj5UFyKTpWCBlC9d8ceq1unrZIqso2+c9pDYVPBjQwj9oTjd5shr0Wm
	eLhLywltW2uJR1bmBaTfNV/LrqRcv/sWFaPwj2NtbPv5g1dPjrZsKhe2+5Kdb9sVUrqvr77nlyfwH
	QE9UfZ1SfewO6zdK/jbqbSOQhe2kgIYpmOJ/bf0MffH03E0yyxayLArvf//RSXsx6vixACSZYWY+S
	TBo1joGBS32lp4+PnHkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PIk-0003JY-Gq; Tue, 11 Feb 2020 06:45:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PIg-0003JI-0i
 for openwrt-devel@bombadil.infradead.org; Tue, 11 Feb 2020 06:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=UqiVKI7lpDELz6ziv0Qu4sik73vf8uUC+jz7YWRavgg=; b=aM8jwh5sBJ5F3PflItjhIpa+Hw
 PI4iZTZXZEdJydqAduqZQYrz0vFbnlgFOPpdsDKhOZ2sk892O53S3wzRjalCuvklJpRdLQaCsRAG8
 LpsVo2d/mx1JZXwvGt59gPXBnCMI0U2BxJJGqTqpiH1MTkLpphndr2IbEKUCRwUC5YV+flqYVs/y4
 jy/3yQXCHOFp/+IXlQ3LEvqdwL5XlsCEgr6O6WwcEiIkzyQVNOhmWVR5LGccJoehpTjqPRInx5xI3
 QCVRCTH1fNVbtGouvvR9jJMWvLZ2pS9M6KMTb2kV3XrAtsvIouTy8UeGjc1go9mPwvwTpmBnRY6XW
 Vp1W6OCQ==;
Received: from mout.gmx.net ([212.227.15.18])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PId-0005V2-1m
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 06:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581403516;
 bh=UqiVKI7lpDELz6ziv0Qu4sik73vf8uUC+jz7YWRavgg=;
 h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date;
 b=UrMBl0kNyzXunFNdDeMfFra2ETQeY2C0wfomX1/UA9U2BZHtQtSx78Hohin4JQcFn
 lVstweJxW6v8Lgh8cXwQE60cwKapaXpMtshVBwpb8q2mteHz7XpXJuv+x6AqHiTwVw
 lHPx0v0zDqOHpr/fdldz98DiuQby1bE6nY5nKqqU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.246]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MF3DW-1jGqgO00c4-00FSOT; Tue, 11
 Feb 2020 07:45:16 +0100
From: "Thomas Endt" <tmo26@gmx.de>
To: <mail@adrianschmutzler.de>,
 "'Baptiste Jonglez'" <baptiste@bitsofnetworks.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
 <20200210222156.GE2373538@lud.localdomain>
 <003f01d5e071$7a8ced00$6fa6c700$@adrianschmutzler.de>
In-Reply-To: <003f01d5e071$7a8ced00$6fa6c700$@adrianschmutzler.de>
Date: Tue, 11 Feb 2020 07:45:15 +0100
Message-ID: <001701d5e0a6$d1853a60$748faf20$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHp0ha7lKjPYlgZsHZxvjoJzzB4mwHqN2m3AvDrEwanxs+OkA==
Content-Language: de
X-Provags-ID: V03:K1:F8fF8PutStyV7azlnjQpeD8p59dw77XHJ8R0HJwXvozSqk61e9w
 ope0ZZ1QK9P8lt9c/DX49JSNv5zboBFciBwyj2APiMs6szh+OmND3Fn0YdwvMDwhJrwtgND
 VX+BFVlnQNr/KsGzRvdp1LU4WEEnmH17ZmQTE7aWM64okgUkJ8WnC1ykc73xUYtUIS4yoer
 50/kc0SXbXEim2rh5LXEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7rYTqMhJxNE=:XQU9sWpf+Yo50tw3Bfkgy2
 LO25QqRWQBYKdgpIUpAH2SrTucRgw5Hju5/u0zMuZ6ac2g+Jcfh+IrfGqYDKpajmAyqEIVp+7
 eTleWw9LWZdrYSiyx8xdFpXudxdMuHaLi4Cn0Qk9or9WS8duQdL4fz00io56n22lsQVCNqWfK
 1sqq9s12jMM7wu0qceY23YapRPA3whWqDNVNpRoJRFZKRzNapnhvEdTzgGCvP54hDs1WNTQbZ
 N6gEhY2cuKey/rTMLvsBb8I0KV6PPHg/JbH6H297VvPapsQyFzIhFJamZRn0jA7U2aDilkKo8
 TIdhbnAEzWoD6GQIOc10lGCAsJQxlSZXm9azZx+KfieGXmiu07df+t8MTkA+TZL5CVQUZnDxd
 44QsS4WGAJ3/USrY2u/ScgariKJSbFzoVGilBXrB85MMR08kD0GyTtvpnVUJS3MuJm75qtZ0/
 qWDGLWcoVnNuwO7VAH3Ts9wndGYdTefTBkkJRRYxiJ7P5zfpf1ysxrRcHbE/h13s9YtOKF9cc
 yYYnI4ysZp/b8eVahTnLRK0mKUvKa3ZfIFNfeSsxheIUFHfoAEAheUd4Bk4qovUQSLO7B9MTV
 76TmoiwbLJQRNoYRWrsqux1lsFntbdTQbQ1y98l7wjsM1RQr+2dE7y5WaB8OxgNEl+Vk4zTcY
 4kK4n1uBHRWm3hpCwIiuCTTev+Kt8+iWXrQDy/svsYgtUhTxtpG3ONsxNfmk9OyH1Jw87dTNV
 5VGP9ctQBQuFE1g4GbAqnehjfHSkU5OCpJWL268BbT8kxbH0pEWdzP3WE4kUj+6RxSDUVQzhF
 xxGwOsRJeotgteyXN0Q6yuqpbqAUqdvCcq33pG+gq5t8iBc7JU+oW4fnajiBeV7T0RcfhYtje
 fbIXBOJ5cmMWeENpYfpfP+vcaJpVL4Uih+FNEdT+bqpgltwuzRxx5C+Bs0agNBEqm21AtkJXw
 pI1ce8TnvTsF90jIKjAE5PRngE8YxP8JkC0692nIqKfyeCgFSVdJ9jI+4AURgtaRFJaEpQA3T
 TkK+xO2B9mcIMPiJBBonWPyL/U1j0+lTwnSsg5LeFnkxWRajorBwnMMuxdlQjICI/YGRGq3p7
 Mg1pESDBCWWMgzXz8LJ3Ct0c1FtYkf9nWLTS37WSCQYgxWnjH9mEx5vkG4b4VeUxeBqaK30wr
 jIXCfjrsFBQgke/Tfe1Ra1/p4hcUN7G8HR9n9zS3EOGSmMhRBHyVY5uD7bvdam7GuUekU=
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to bcm47xx
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

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBvcGVud3J0LWRldmVs
IDxvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmc+IEltCj4gQXVmdHJhZyB2
b24gbWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlCj4gR2VzZW5kZXQ6IERpZW5zdGFnLCAxMS4gRmVi
cnVhciAyMDIwIDAxOjIzCj4gQW46ICdCYXB0aXN0ZSBKb25nbGV6JyA8YmFwdGlzdGVAYml0c29m
bmV0d29ya3Mub3JnPjsgb3BlbndydC0KPiBkZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IEJldHJl
ZmY6IFJlOiBbT3BlbldydC1EZXZlbF0gW1BBVENIIDEvMl0gYnJjbTQ3eHg6IHJlbmFtZSB0YXJn
ZXQgdG8KPiBiY200N3h4Cj4gCj4gSGksCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQo+ID4gRnJvbTogb3BlbndydC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0Bs
aXN0cy5vcGVud3J0Lm9yZ10KPiA+IE9uIEJlaGFsZiBPZiBCYXB0aXN0ZSBKb25nbGV6Cj4gPiBT
ZW50OiBNb250YWcsIDEwLiBGZWJydWFyIDIwMjAgMjM6MjIKPiA+IFRvOiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4gPiBTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRD
SCAxLzJdIGJyY200N3h4OiByZW5hbWUgdGFyZ2V0IHRvCj4gPiBiY200N3h4CgpbLi4uXQo+ID4g
V29uJ3QgdGhpcyBicmVhayB2YXJpb3VzIHRoaW5ncyBzdWNoIGFzIHRoZSB3aWtpLCB0aGUgZG93
bmxvYWQKPiA+IHNlcnZlcnMsIG1heWJlIG90aGVyIGluZnJhc3RydWN0dXJlPwpbLi4uXQo+IFRo
ZSBiaWdnZXN0IG9ic3RhY2xlIG1pZ2h0IGFjdHVhbGx5IGJlIHRoZSBXaWtpLgo+IAo+ID4KPiA+
IEZvciBpbnN0YW5jZTogaHR0cHM6Ly9vcGVud3J0Lm9yZy9kb2NzL3RlY2hyZWYvdGFyZ2V0cy9i
cmNtNDd4eAo+ID4KPiA+IEFsbCB0ZWNoZGF0YSBVUkxzIHdvdWxkIG5lZWQgdG8gYmUgdXBkYXRl
ZCwgYnV0IG9ubHkgZm9yIHRoZSB1cGNvbWluZwo+ID4gcmVsZWFzZTogaHR0cHM6Ly9vcGVud3J0
Lm9yZy90b2gvbmV0Z2Vhci93bmRyNDAwMCNpbnN0YWxsYXRpb24KPiAKPiBJIGRvIG5vdCBrbm93
IGhvdyB0aG9zZSBVUkxzIGFyZSB1cGRhdGVkLCBhbmQgaG93IG11Y2ggbWFudWFsCj4gaW50ZXJm
ZXJlbmNlIGlzIG5lZWRlZCB0aGVyZS4KCkRhdGFlbnRyeSB1cGRhdGUgbm9ybWFsbHkgaGFwcGVu
cyBtYW51YWxseS4KSWYgdGhlIG51bWJlciBvZiBhZmZlY3RlZCBkZXZpY2VzIGlzIHRvbyBoaWdo
IGZvciBtYW51YWwgaW50ZXJ2ZW50aW9uLCBjaGFuZ2VzIGNhbiBiZSBzY3JpcHRlZC4KCkRvbid0
IHdvcnJ5IGFib3V0IHRoZSB3aWtpIHdoZW4gY2hhbmdpbmcgdGFyZ2V0IG5hbWVzLiBJdCBoYXBw
ZW5lZCBpbiB0aGUgcGFzdCBhbmQgaXMgbWFuYWdhYmxlLgoKVGhvbWFzCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
