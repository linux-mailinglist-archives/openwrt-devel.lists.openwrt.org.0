Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4271412E974
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 18:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+GyosZwAixWgwt+ifeWZ8XUTMT41k+rEzGqqPo3pzE=; b=FcAIPqgpy5p6Fk
	3enhyg0ep4d6/nOTSwbyZwNvIY9i/war4BczFthk6kY2TGzqvqqWmGUU5fwxjljPshB07+/hY0boV
	K0PF3jS+V380Y55K7o7yEp5Yzyg/wdqRL3vhpMb+yJ6PFyIuVQ5mtCOq6DBN+7XmtxgivaWpG0kdo
	rOVTKT+yW3ob0/D+2kmcblVLIF6WQKjlzbvvSj2WNSFjV3bp4pKm33wYd6dCZu2L0bHCa7q6yw0+A
	Ybkb3hcEbyWdz6G284b6wU4JRaeHOaiZw1bJuU31NIs5H/Q8XKgvXIvd9qsI2Hiubo0rP2bWttZxb
	JzkCOPcFEAtwJLZ6pTZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4PD-0005Fm-7r; Thu, 02 Jan 2020 17:37:07 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4P5-0005FD-NT
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 17:37:01 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id ADB3CFA8E8; Thu,  2 Jan 2020 18:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577986600;
 bh=wifuzHEG9wssnyq1zdCPp/otd9GcdwATMqe/mAm7ctw=;
 h=Date:In-Reply-To:References:Subject:To:CC:From:From;
 b=BEjnLiyfRKmkV+I/Qcbta/0Dm5RaiWsW3ESXcj8DpD+5kShdPG6gYscheIaww71Qx
 e57xiDHem5reA6AhTKUpSjT5IhrN3BRgSvRnY5XyLLAtxvjBrslFOxr8zz44SQJSWA
 vcPQIPWGQrqTZHmO8V4Y5xJBbJzLzUKnQZrgqIv8=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.250.82.210] (cust-210-82-109-94.dyn.as47377.net
 [94.109.82.210])
 by volatilesystems.org (Postfix) with ESMTPSA id 67660FA8E6;
 Thu,  2 Jan 2020 18:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577986595;
 bh=wifuzHEG9wssnyq1zdCPp/otd9GcdwATMqe/mAm7ctw=;
 h=Date:In-Reply-To:References:Subject:To:CC:From:From;
 b=Q6oImylyDWmBZFZ4vbn8TbsyZiGH8Mguk4WVWEOPPlL/ipgrLnozz7eIWX0IuepTB
 KiwTjZ0fc52nZWzx2ZBRMryyBuja8qgCy8lKzFUjejf85X1QWGqc63hKP+HA8c+qgk
 pmJq08jhIaT4K6H1hqR8CvbkNmz/IjMpajHhDUkw=
Date: Thu, 02 Jan 2020 18:36:33 +0100
In-Reply-To: <5e23fc80-72c7-5fe8-cf61-1b1390844a64@iki.fi>
References: <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <5e23fc80-72c7-5fe8-cf61-1b1390844a64@iki.fi>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org, Hannu Nyman <hannu.nyman@iki.fi>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
From: Stijn Segers <foss@volatilesystems.org>
Message-ID: <60DBDE96-C4EB-42D9-8927-DF7771685F0A@volatilesystems.org>
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_093700_043414_96DB377A 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Cc: =?ISO-8859-1?Q?Petr_Nov=E1k?= <petrn@me.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGFubnUgTnltYW4gPGhhbm51Lm55bWFuQGlraS5maT4gc2NocmVlZiBvcCAyIGphbnVhcmkgMjAy
MCAxNjo0ODowOCBDRVQ6Cj5QZXRyIMWgdGV0aWFyIGtpcmpvaXR0aSAxLjEuMjAyMCBrbG8gMjIu
NDY6Cj4+IFBldHIgTm92w6FrIDxwZXRybkBtZS5jb20+IFsyMDIwLTAxLTAxIDIxOjExOjMwXToK
Pj4KPj4+IEJ1dCBob3cgY29tZSB0aGUgd29ya2Fyb3VuZCB3YXMgdG8gdXNlIGFuIG9sZGVyIGxp
YnVib3ggYW5kIHVidXMgLQo+d2FzIHRoZXJlCj4+PiBhbnkgbmV3IGNoZWNrIHdoaWNoIHdhcyBu
b3QgdGhlcmUgYmVmb3JlPwo+PiBJIGRvbid0IGhhdmUgZGVmaW5pdGl2ZSBhbnN3ZXIsIGFzIEkg
d291bGQgbmVlZCBSUGktNCAob3IgYW55IG90aGVyCj5yZWFsCj4+IGhhcmR3YXJlIHdpdGggQ29y
dGV4LUE3MiBjb3JlKSB0byBmaW5kIHRoZSBhY3R1YWwgYml0IGluIHRoZSBsaWJ1Ym94Cj53aGlj
aAo+PiBjYXVzZWQgdGhpcyBjaGFuZ2UgaW4gdGhlIGJlaGF2aW9yLCBidXQgaGVyZSBpcyBhIHBh
cnQgb2YgdGhlIGNvbW1pdAo+PiBkZXNjcmlwdGlvblsxXSB3aGljaCBtaWdodCBoZWxwIGFuc3dl
cmluZyB0aGF0Ogo+Pgo+PiAgIEl0IHNlZW1zIGxpa2UgdGhlIHJlY2VudCBmaXhlcyBpbiB0aGUg
bGlidWJveCBsaWJyYXJ5LCBwYXJ0aWN1bGFyeQo+aW4KPj4gICB0aGUganNobiBzdWItY29tcG9u
ZW50ICh3aGljaCBlbXBvd2VycyBqc29uX2R1bXAgdXNlZCBpbiB0aGUgc2hlbGwKPj4gICBzY3Jp
cHQgZXhlY3V0ZWQgYnkgdGhlIGNoaWxkIHByb2Nlc3MpIG1hZGUgdGhlIGV4ZWN1dGlvbiBzb21l
aG93Cj5mYXN0ZXIsCj4+ICAgdGh1cyBleHBvc2luZyB0aGlzIHJhY3kgYmVoYXZpb3VyIGluIHRo
ZQo+dmFsaWRhdGVfZmlybXdhcmVfaW1hZ2VfY2FsbCBhdAo+PiAgIGxlYXN0IG9uIFJQaS00IChD
b3J0ZXgtQTcyKSB0YXJnZXQuCj4+Cj4+IEFzIEkgd2FzIHVuYWJsZSB0byB0cmlnZ2VyIHRoaXMg
aXNzdWUgZXZlbiBpbiB0aGUgUUVNVS9Db3J0ZXgtQTcyIEkKPmFzc3VtZSwKPj4gdGhhdCBpdCB3
YXMgc2ltcGx5IHNvbWUga2luZCBvZiByYWNlLCBuZWVkZWQgc3BlY2lmaWMgdGltaW5nLAo+cHJv
dmlkZWQKPj4gcHJlY2lvdXNseSBvbmx5IGJ5IHRoYXQgUlBpLTQgaGFyZHdhcmUuCj4KPgo+SSB0
aGluayB0aGF0IHRoZXJlIG1heSBoYXZlIGJlZW4gYW4gb2xkZXIgcmFjZSBjb25kaXRpb24gYmVo
YXZpb3VyIHRoYXQKPmhhcyAKPm5vdyBqdXN0IHN1cmZhY2VkIGJldHRlciB3aXRoIFJQaTQgYWZ0
ZXIgdGhlIHJlY2VudCBjaGFuZ2VzLiBJdCBoYXMKPmVhcmxpZXIgCj5tYW5pZmVzdGVkIGl0c2Vs
ZiBzb21ldGltZXMgd2l0aCBzb21lIHJvdXRlcnMsIGJ1dCBtb3JlIHJhcmVseS4KPgo+SSBoYXZl
IHNlZW4gYW4gb2NjYXNpb25hbCBmYWlsdXJlIG9mIHN5c3VwZ3JhZGUgaW4gb25lIG9mIG15IHJv
dXRlcnMKPnNpbmNlIAo+T2N0b2JlciAoYXI3MXh4IG9yIGF0aDc5wqAgLyBXTkRSMzcwMHYyKS4K
CkkndmUgc2VlbiB0aGUgc2FtZSBtdWx0aXBsZSB0aW1lcyBvbiBtb3JlIHRoYW4gb25lIG10NzYy
MSBkZXZpY2UgYW5kIEkgb3BlbmVkICBGUyMyNjk2IG9uIHRoaXMuCgpHcmFudGVkLCBub3QgdGhl
IG1vc3QgdmVyYm9zZSBidWcgcmVwb3J0LgoKU3Rpam4KCgoKCj4gSSB3cm90ZSBhYm91dCB0aGF0
IHRvIHRoZQo+bWFpbGluZyAKPmxpc3QgaW4gTm92ZW1iZXIsIGFsdGhvdWdoIHRoZW4gSSB0aG91
Z2h0IHRoYXQgaXQgbWlnaHQgYmUganVzdCBhCj4iZm9yY2UiIAo+b3B0aW9uIGZhaWx1cmU6Cj5o
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZlbC8yMDE5LU5v
dmVtYmVyLzAxOTk5Ni5odG1sCj4KPk90aGVycyBoYXZlIHNlZW4gdGhhdCBhbHNvLCBiYXNlZCBv
biBmb3J1bSBkaXNjdXNzaW9uOgo+aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L2J1aWxkLWZv
ci13bmRyMzcwMHYxLXYyLXduZHIzODAwLzY0LzI5NQo+Cj5QZXRyIE5vdmFrIGRlc2NyaWJlcyBz
aW1pbGFyIHRoaW5nIGFzIG15IGVycm9yIGFzOiAiaXQgZG9lcyBqdXN0IHJlYm9vdAo+YnV0IAo+
ZG9lcyBub3QgZmxhc2ggYW55dGhpbmcuIgo+Cj5JIGhhdmUgdHJpZWQgdG8gZGVidWcgdGhhdCBp
biBteSBXTkRSMzgwMCB0aGF0IGhhcyBzZXJpYWwgY29uc29sZQo+Y29ubmVjdGlvbiwgCj5idXQg
aGF2ZSBub3QgbWFuYWdlZCB0byBwcm9kdWNlIHRoZSBlcnJvciBpbiB0aGF0IDM4MDAuIFdpdGgg
MzgwMCB0aGUgCj5zeXN1cGdyYWRlIGhhcyBzdWNjZWVkZWQgYWx3YXlzLiBIb3dldmVyLCBpbiBt
eSAzNzAwdjIgKHRoYXQgaGFzCj5pZGVudGljYWwgCj5oYXJkd2FyZSBleGNlcHQgdGhlIFJBTSBz
aXplKSBvbiB0aGUgb3RoZXIgc2lkZSBvZiB0aGUgYnVpbGRpbmcsIEkKPnN0aWxsIAo+b2NjYXNp
b25hbGx5IHNlZSB0aGUgYmVoYXZpb3VyIG9mIEx1Q0kgYmFzZWQgc3lzdXBncmFkZSBzdGFydGlu
ZyBvaywKPmJ1dCB0aGUgCj5yb3V0ZXIgYm9vdGluZyBiYWNrIHRvIHRoZSBzYW1lIGZpcm13YXJl
IGFmdGVyIGFuIGludmlzaWJsZSBlcnJvci4KPkFmdGVyIHRoYXQgCj5yZWJvb3QgdGhlIG5leHQg
c3lzdXBncmFkZSBhdHRlbXB0IHZpYSBMdUNJIHVzdWFsbHkgd29ya3MgcXVpdGUgb2suCj4oc291
bmRzIAo+bGlrZSBhIHN5c3VwZ3JhZGUgZnJvbSBhIHJlY2VudGx5IGJvb3RlZCBzeXN0ZW0gdXN1
YWxseSB3b3JrcywgYnV0IAo+c3lzdXBncmFkaW5nIGEgc3lzdGVtIGFmdGVyIHNvbWUgcnVudGlt
ZSBkb2VzIHNvbWV0aW1lcyBub3Qgd29yay4pCj4KPkkgZmlyc3QgdGhvdWdodCB0aGF0IGl0IHdh
cyByZWxhdGVkIHRvIHVzaW5nIGZvcmNlIGluIHRoZSBhcjcxeHgvYXRoNzkKPmp1bXAsIAo+YnV0
IGl0IGhhcyBiZWVuIHByZXNlbnQgaW4gbm9ybWFsIHN5c3VwZ3JhZGVzLgo+Cj5Qb3NzaWJseSBh
IG1hbmlmZXN0YXRpb24gb2YgdGhlIHNhbWUgcmFjZSBjb25kaXRpb24gaW4gCj5zeXN1cGdyYWRl
L3Byb2NkL2xpYnVib3gsIHNvIGhvcGVmdWxseSB5b3VyIHBhdGNoZXMgd2lsbCBmaXggYWxzbyB0
aGF0Lgo+Cj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj5vcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCj5odHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
