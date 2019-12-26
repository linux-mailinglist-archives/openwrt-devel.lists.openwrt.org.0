Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD2412AF7D
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 00:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cTo6tgLaIy5ha1AJYoqar8pT2IH9ndvDJcTOjzaGinI=; b=JzH/T3jXCIhM7Gxyf6yhsBbTQn
	DpTEXPFRZJSkgPUdkQZa9qcdDMxNx8By/Rv4JPNopXl/jU0+/nszM+AFq5ZM6uYYsrfa9HRTOXWJt
	UCXlGJUjeRZup7VhkRG0OGkpXTe5MIRZKG7ZmDPV0ItiqlvIXRxPeOqidbPv/wV5/RJPKJ1KeKvi9
	h3At/bdheXxqjD2DMoqP6O0QpgvA72dJtKI3ge2bFVrtjJH92yu9C97sO9oqRt53j/5R4n02fYMVg
	EcNFRp5624pkJ+qgB13KPCsBaeZAh+zNcYxd+T/Gw9ODXotZZDJra/+oVRJoJBNlgf0txfXrNNwEK
	jLTllU/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikc6o-0001Qm-NI; Thu, 26 Dec 2019 22:59:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikc6f-0001QC-FG
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 22:59:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1A10245FE;
 Thu, 26 Dec 2019 23:59:47 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 02fb8911;
 Thu, 26 Dec 2019 23:59:36 +0100 (CET)
Date: Thu, 26 Dec 2019 23:59:36 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: hannu.nyman@iki.fi
Message-ID: <20191226225936.GB70184@meh.true.cz>
References: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6cb3b640-8590-d083-e5c2-63df74c7e86b@welho.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_145949_659633_F450FCF1 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] ubus and/or libubox upgrades today cause
 problems: some services do not start, logread hangs
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGFubnUgTnltYW4gPGhhbm51Lm55bWFuQHdlbGhvLmNvbT4gWzIwMTktMTItMjYgMjI6Mzc6MzFd
OgoKSGksCgo+IEkgbm90aWNlZCB0b2RheSBwcm9ibGVtcyB3aXRoIG5ldyBtYXN0ZXIgYnVpbGRz
LCBib3RoIHdpdGggaXBxODA2eC9SNzgwMCBhbmQKPiBhcjcxeHgvV05EUjM3MDA6Cj4gCj4gKiBT
b21lIHNlcnZpY2VzIGRvIG5vdCBzdGFydCBhbmQgdGhlaXIgcHJvY2Vzc2VzIGFyZSBub3Qgdmlz
aWJsZSBpbiB0aGUKPiBwcm9jZXNzIGxpc3QuIEV4YW1wbGVzOiBjb2xsZWN0ZCBhbmQgbmxid21v
bgo+ICogbG9ncmVhZCBjb21tYW5kIGFsd2F5cyBoYW5ncy4gQm90aCBmcm9tIFNTSCBjb25zb2xl
IGFuZCBsdWNpCgpzb3JyeSBmb3IgdGhlIGJyZWFrYWdlLgoKPiBJIHJldmVydGVkIGJvdGggdWJ1
cyBhbmQgbGlidWJveCBjaGFuZ2VzIGFuZCB0aGUgc2VydmljZXMgc3RhcnQgYWdhaW4KPiAobmxi
d21vbiwgY29sbGVjdGQpLCBhbmQgYWxzbyBsb2dyZWFkIHdvcmtzIDstKQoKSSd2ZSBqdXN0IGxv
b2tlZCBhdCB0aGUgbG9ncmVhZCBpc3N1ZSBhbmQgSSd2ZSB0cmFja2VkIGl0IGRvd24gdG8gdGhl
IGZvbGxvd2luZwpjb21taXRbMV06CgogY29tbWl0IDVkN2NhODMwOWQwYTE2MTRkODI5ZGY5ZWNk
NzI1NTNiY2Q2YjVlYzYKIEF1dGhvcjogICAgIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+
CgogICAgdWJ1c2QvbGlidWJ1cy1pbzogZml4IHZhcmlhYmxlIHNpemVkIHN0cnVjdCBwb3NpdGlv
biB3YXJuaW5nCiAgICAKICAgIEZpeGVzIGZvbGxvd2luZyBjbGFuZy05IGNvbXBpbGVyIHdhcm5p
bmdzOgogICAgCiAgICAgdWJ1c2QuYzo5OToxODogZXJyb3I6IGZpZWxkICdoJyB3aXRoIHZhcmlh
YmxlIHNpemVkIHR5cGUgJ3N0cnVjdCBjbXNnaGRyJyBub3QgYXQgdGhlIGVuZCBvZiBhIHN0cnVj
dCBvciBjbGFzcyBpcyBhIEdOVSBleHRlbnNpb24gWy1XZXJyb3IsLVdnbnUtdmFyaWFibGUtc2l6
ZWQtdHlwZS1ub3QtYXQtZW5kXQogICAgICAgICAgICAgICAgICAgIHN0cnVjdCBjbXNnaGRyIGg7
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgoKSSdsbCB0cnkgdG8gZml4IHRo
YXQgdG9tb3Jyb3cuCgoxLiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy81ZDdjYTgzMDlkMGExNjE0
ZDgyOWRmOWVjZDcyNTUzYmNkNmI1ZWM2CgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
