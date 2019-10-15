Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006FFD7301
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 12:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DFokMddu+FwJrv81t3K7/zPngd+JG48gPqH5IoVIqYA=; b=DLUIPGcngwj2O9Z/peE5G9KeW
	FCsa2y5jgW2OLQ8mF9YLyG/y5dFcxNEEP5qXPq+xuC7JogYJUaUEokj/cDldhPAfG1TkJZbU6uvVl
	EYH/Eygd0oTGnhZ3MhMVckF9J6+vDHIv89ZSKkh8Mwcwiq0bWtZxROQq+HJguo3NyzTScXQcHgtIy
	snxFWvbHOD3HCeUxeSUnexZHPav4UhxKhC5ELdmZliHThuxM1YIMfaz8eOSlgEoXpvwAQcvE0eTG0
	LE5S3a4kRyRaWy2xrnC80yhFsfNG/FqG0alNle9Sn8HnEmVXrFzY6WrNcXHUXlThS0uY2C01ytiFx
	Yy5GqYeyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJtv-0000MJ-TM; Tue, 15 Oct 2019 10:17:59 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJta-0000H0-PI
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 10:17:41 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 07FCC60010;
 Tue, 15 Oct 2019 10:17:23 +0000 (UTC)
To: Scott <xmrscott@protonmail.com>
References: <mailman.26691.1569291335.19300.openwrt-devel@lists.openwrt.org>
 <8204ec6c-5485-3e8b-6763-e0daa20a7549@aparcar.org>
 <DWSuFMxlBr3Lxx2fe7jtlU34cB4CtVDmCNSU-yFJj8hMYNoA5CbXACBGsjqppgas-sFuF6xMJi3g_VTfEDrAKrpa9-lpu6xN90ZMS8DCNL0=@protonmail.com>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <1eae8b60-a4cf-f45c-6c2e-7814abcc47fd@aparcar.org>
Date: Tue, 15 Oct 2019 00:17:20 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <DWSuFMxlBr3Lxx2fe7jtlU34cB4CtVDmCNSU-yFJj8hMYNoA5CbXACBGsjqppgas-sFuF6xMJi3g_VTfEDrAKrpa9-lpu6xN90ZMS8DCNL0=@protonmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_031738_981435_DFB57B3C 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [Suggestions] Streamline localization by using
 Weblate for the project,
 use LiberaPay or OpenCollective to enable people to donate
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
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDkvMjUvMTkgMzoyNCBQTSwgU2NvdHQgd3JvdGU6Cj4g4oCQ4oCQ4oCQ4oCQ4oCQ4oCQ4oCQ
IE9yaWdpbmFsIE1lc3NhZ2Ug4oCQ4oCQ4oCQ4oCQ4oCQ4oCQ4oCQCj4gT24gVHVlc2RheSwgU2Vw
dGVtYmVyIDI0LCAyMDE5IDE6MTMgQU0sIFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4g
d3JvdGU6Cj4KPgo+PiBJIHRoaW5rIHRoYXQncyBhIGdvb2QgaWRlYSEgQXMgaXQgZG9lc24ndCBu
ZWVkIHRvIGJlIGRpcmVjdGx5IGludGVncmF0ZWQKPj4gaW4gYW55IGV4aXN0aW5nIHdvcmtmbG93
IG5vciByZXF1aXJlcyBwcml2aWxlZ2VzIG9uIGFueSBHaXQsIGl0J3MKPj4gYmFzaWNhbGx5IGp1
c3QgYSBmYW5jeSBmcm9udC1lbmQgd2l0aCB0cmFuc2xhdGlvbiBzdWdnZXN0aW9ucyBmb3IgLnBv
Cj4+IGZpbGVzIHJpZ2h0Pwo+Pgo+PiBPdXQgb2YgY3VyaW9zaXR5IEkgcmVxdWVzdGVkIGEgbGli
cmUgYWNjb3VudCBmb3IgYSBxdWljayBldmFsdWF0aW9uLCBpZgo+PiBhbnlvbmUgaXMgaW4gc2Vy
aW91cyBkb3VidCBvbiBldmFsdWF0aW9uIGl0IEknbGwgaW5zdGFudGx5IGNhbmNlbCB0aGUKPj4g
cmVxdWVzdC4gSG93ZXZlciBJIHRoaW5rIHRoaXMgaXMgaW4gbGluZSB3aXRoCj4+IGh0dHBzOi8v
b3BlbndydC5vcmcvbWVldGluZ3MvaGFtYnVyZzIwMTkvc3RhcnQjbHVjaV90cmFuc2xhdGlvbnMK
Pj4KPiBDb3JyZWN0LCBpdCBuZWVkcyBubyBwcml2aWxlZ2VzIHRvIHVwZGF0ZSBXZWJsYXRlJ3Mg
LnBvIGNvcHkgZnJvbSB0aGUgcmVwb3NpdG9yeSBhbmQgaWYgeW91IHdhbnQgdG8gY29tbWl0IHRo
ZSBsb2NhbGl6YXRpb24gdGhhdCBoYXMgYmVlbiBtYWRlIGJ5IGNvbnRyaWJ1dG9ycyB5b3UgY2Fu
IG9wdCB0byBoYXZlIHRoZSBXZWJsYXRlIGNvbW1pdCBhdXRvbWF0aWNhbGx5IGlmIHlvdSdyZSBm
ZWVsaW5nIGRhcmluZywgb3IgeW91IGNhbiBqdXN0IG9wdCB0byBoYXZlIG1hbnVhbGx5IHRyaWdn
ZXJlZCBQUiB3aGVyZSBzb21lb25lIHdpdGggbWVyZ2UgcGVybWlzc2lvbiBjYW4gcmV2aWV3IHBl
ciB1c3VhbCBjb250cmlidXRpb24gd29ya2Zsb3cuIFRoZSBDb250aW51b3VzIExvY2FsaXphdGlv
biBkb2N1bWVudGF0aW9uIGRvY3VtZW50cyB0aGUgd29ya2Zsb3cgYW5kIHBvc3NpYmlsaXRpZXMg
cHJldHR5IHdlbGw6IGh0dHBzOi8vZG9jcy53ZWJsYXRlLm9yZy9lbi9sYXRlc3QvYWRtaW4vY29u
dGludW91cy5odG1sCj4KPiBZZXAsIFdlYmxhdGUgaXMgbGFyZ2VseSBhIGJyb3dzZXIgYmFzZWQg
bG9jYWxpemF0aW9uIHRvb2wgZnJvbnRlbmQgd2l0aCBhIHBpbmNoIG9mIG1pZGRsZXdhcmUgY29t
cG9uZW50cyB0byB1cGRhdGUgV2VibGF0ZSdzIGNvcHksIHNlbmQgb3V0IG5vdGlmaWNhdGlvbnMs
IGFuZCBtYWtlIGNvbW1pdHMgb3IgUFIncy4KCldlYmxhdGUgYXBwcm92ZWQgaG9zdGluZyBPcGVu
V3J0IGFuZCBpdCBpcyBzdXJwcmlzaW5nbHkgYWRkaWN0aXZlLiBUaGUgCnByb2plY3QgaXMgZm91
bmQgaGVyZVswXSBhbmQgdGhlIGF1dG9tYXRpYyBQUiBjcmVhdGlvbiB3b3Jrc1sxXSBhbHNvLiAK
VGhhbmtzIGZvciBwb2ludGluZyB0byB0aGF0IHByb2plY3QhIEhhcHB5IHRyYW5zbGF0aW5nIEkg
Z3Vlc3MuLi4KCkJlc3QsClBhdWwKClswXTogaHR0cHM6Ly9ob3N0ZWQud2VibGF0ZS5vcmcvcHJv
amVjdHMvb3BlbndydC8KWzFdOiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9sdWNpL3B1bGwv
MzE5MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
