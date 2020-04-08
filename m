Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E3E1A1E46
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 11:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6rZ66j/Gz+VXVDVPzfCDVxu+m6lVPqtZarK3p26ai4=; b=JLh7VjToqDJX7n
	K8wEUuqhfCEMNFp6e1OltzNHSR6A/iuN2yXlQkj/1cp1t8WQ4vWtu3xbonrh0Q9jvkdD3OTmIk4W8
	/+L93w8Mx69z+cj1rVIJqgYSjHr13h7w2nwHCxwyaV9tO3RSsqdyW7iXUi07uBXobl6YF3Ohrgs/V
	U0jUdqz58/NP0FWd5D2jsmp8aGTSJwxL3och82wLfa03YkQArovclpN4MDZKp0sA4sstP7R/Tfx1S
	8abAm0IWzUesEcmE21P2fK32tPVpH+i5RJrVIu1D12EJcxz/l2fCEcqxMX36GwBJU0H+Ye7Q9yhV2
	qzEl1MJWibhRveVp9QjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7KR-0003vt-W6; Wed, 08 Apr 2020 09:49:04 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7KK-0003oc-76
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 09:48:57 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id BD8856000B;
 Wed,  8 Apr 2020 11:48:54 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org BD8856000B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1586339334; bh=A4PvjP+w7YHVje2rYEAIMzrX4RQXZTohDLHpBaXOu/I=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=xUMZCE+CtYcGW+jgUCwSSlHF+RdgaaUvHVNu5llMeg4HHV1CJUznPbYQ9bpV0HyUS
 J+bCAE4WBLBGBfiX0bnt5rchg058jHk5bxkUnuQEQzGzyOmyyImq3ixL7sXydieYCX
 CjhhuAnFbZIQK2NFApuaZO87PKq6lzWUutCl/c10=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <20200403182056.43730-2-hacks@slashdirt.org>
Date: Wed, 8 Apr 2020 11:48:54 +0200
Message-Id: <0F7235E4-4CFC-45D0-8E82-3DD85D935C0D@slashdirt.org>
References: <20200403182056.43730-1-hacks@slashdirt.org>
 <20200403182056.43730-2-hacks@slashdirt.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_024856_437671_52534EE6 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/8] generic: routerboot sysfs platform
 driver
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
Cc: Tobias Schramm <tobleminer@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U3VjY2Vzc2Z1bGx5IFRlc3RlZC1ieSBvbiByYW1pcHMgUkJNMzNHIGJ5IFRvYmlhcyBTY2hyYW1t
IChpbiBDQykuCgo+IExlIDMgYXZyLiAyMDIwIMOgIDIwOjIwLCBUaGliYXV0IFZBUsOITkUgPGhh
Y2tzQHNsYXNoZGlydC5vcmc+IGEgw6ljcml0IDoKPiAKPiBUaGlzIGRyaXZlciBleHBvc2VzIHRo
ZSBkYXRhIGVuY29kZWQgaW4gdGhlICJoYXJkX2NvbmZpZyIgZmxhc2ggc2VnbWVudAo+IG9mIE1p
a3JvVGlrIFJvdXRlckJPQVJEcyBkZXZpY2VzLiBJdCBwcmVzZW50cyB0aGUgZGF0YSBpbiBhIHN5
c2ZzIGZvbGRlcgo+IG5hbWVkICJoYXJkX2NvbmZpZyIuIFRoZSBXTEFOIGNhbGlicmF0aW9uIGRh
dGEgaXMgYXZhaWxhYmxlIG9uIGRlbWFuZCB2aWEKPiB0aGUgJ3dsYW5fZGF0YScgc3lzZnMgZmls
ZSBpbiB0aGF0IGZvbGRlci4KPiAKPiBUaGlzIGRyaXZlciBwZXJtYW5lbnRseSBhbGxvY2F0ZXMg
YSBjaHVuayBvZiBSQU0gYXMgbGFyZ2UgYXMgdGhlCj4gImhhcmRfY29uZmlnIiBNVEQgcGFydGl0
aW9uICh0eXBpY2FsbHkgNEtCKSwgYWx0aG91Z2ggaXQgaXMgdGVjaG5pY2FsbHkKPiBwb3NzaWJs
ZSB0byBvcGVyYXRlIGVudGlyZWx5IGZyb20gdGhlIE1URCBkZXZpY2Ugd2l0aG91dCB1c2luZyBh
IGxvY2FsCj4gYnVmZmVyIChleGNlcHQgd2hlbiByZXF1ZXN0aW5nIFdMQU4gY2FsaWJyYXRpb24g
ZGF0YSksIGF0IHRoZSBjb3N0IG9mIGEKPiBwZXJmb3JtYW5jZSBwZW5hbHR5Lgo+IAo+IFRoaXMg
ZHJpdmVyIGRvZXMgbm90IHJldXNlIGFueSBvZiB0aGUgZXhpc3RpbmcgY29kZSBwcmV2aW91c2x5
IGZvdW5kIGluCj4gcm91dGVyYm9vdC5jLgo+IAo+IFRoaXMgZHJpdmVyIGhhcyBiZWVuIHN1Y2Nl
c3NmdWxseSB0ZXN0ZWQgb24gQkUgKGF0aDc5KSBhbmQgTEUgKGlwcTQweHgpCj4gaGFyZHdhcmUu
Cj4gCj4gVGVzdGVkLWJ5OiBSb2dlciBQdWV5byBDZW50ZWxsZXMgPHJvZ2VyLnB1ZXlvQGd1aWZp
Lm5ldD4KPiBUZXN0ZWQtYnk6IEJhcHRpc3RlIEpvbmdsZXogPGdpdEBiaXRzb2ZuZXR3b3Jrcy5v
cmc+Cj4gU2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3Jn
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
