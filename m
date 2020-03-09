Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703A817E5A0
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 18:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gNzJcYciHReTaAPcMBGAWUz1xKmwMW/mcILr2fEzV/g=; b=HhpQ1HKqidIKG4JXoIGb6l870
	0q+1TGsMx4Wc2iQoSs36bwMCA10EDhJF2Cpgg5Gj612yZ6/kSKbr1w1p1U7Ms4n7uEUwN+kxXrV3V
	BZNSDmSyFK+iTKMZ4u+FQvq2hahNKUQIPsARzKDGuJxU/+KrQdiXOcFNT2LPjhAOJ3pBl6Yn+OlL6
	sC8g9GvZ5rOsX96a6NhHyVMerJRSx4jmKLmEv8GHKZywwVTKYwtSVniKYMIJAnV3sRw6rCPmXWkQU
	mUFR1RzVdc7pzLhrmfUdXrR6IAQv3xP590RMdnwT4ELgIleMUPUJHFBHiIfZ6iBqQR9lESTI54SOY
	LjIsme9Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBM6I-0005Vt-I0; Mon, 09 Mar 2020 17:21:58 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBM6B-0005UL-Vx
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 17:21:53 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1jBM5q-0006cE-Oo
 for openwrt-devel@openwrt.org; Mon, 09 Mar 2020 13:21:31 -0400
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1583774488;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=sqPJVjr+WJ88DSJnPFlVj1jBkFw=;
 b=hsTfjb+Z5zNIi3tIMclrWxS3VC7HqOuVzwVunPxA9M6w1RLH+lRfjj3mFA7QHCa8
 V+9Hmn25e5ULKx4Sn6yH3M2uCd3bzEcFMcIMQAkp9hy4DdMKKy6WQYQcd+soixXy
 BB6d7FGDYRiXYizWx2e+XvcW7xwItq4mqaDMlOB5Nbr63GG7QFEkqAXfjYtUB0r1
 5rAFS4LnNrsdQ8yozQ3geWDelYTLBlMPCeZLYiMcvWiAqb5xf8z3xQMRn1KNzkKD
 GrrMWrLqOWFabU0NJBDzed1lmRQa3Lxuo2AbpgldigtjOf/59MYqkenWq1Bvvat1
 H5lFTp6zB88TgaCYnOcliQ==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=cvLlbGwi c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10
 a=SS2py6AdgQ4A:10 a=AsiJWZegAdEA:10 a=eQrCS-SpgXYA:10 a=jdP34snFAAAA:8
 a=QQ5_3CY4pLJe83Z3gBkA:9 a=Z7WC0D3PKzFoZ6ci:21 a=FO_fig5YTzoWvpeL:21
 a=QEXdDO2ut3YA:10 a=jlphF6vWLdwq7oh3TaWq:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp01.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:36272] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id E8/2E-21289-71B766E5; Mon, 09 Mar 2020 13:21:28 -0400
Date: Mon, 9 Mar 2020 10:21:21 -0700
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200309172121.GA5449@centurylink.net>
References: <20200307212333.GA6999@centurylink.net>
 <042901d5f60e$3f6caf00$be460d00$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <042901d5f60e$3f6caf00$be460d00$@adrianschmutzler.de>
Organization: Penguin Innovations
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  The prior post had a question on the default MAC address.
 My build generates the Trendnet portion of the MAC but not the model. This
 is the behavior of the D-Link DIR-810L code. As I'm new to the buil [...]
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [206.152.134.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_102152_192364_3ECA4397 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] ramips: adding support for TRENDnet DIR-810DR
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIHByaW9yIHBvc3QgaGFkIGEgcXVlc3Rpb24gb24gdGhlIGRlZmF1bHQgTUFDIGFkZHJlc3Mu
ICBNeSBidWlsZApnZW5lcmF0ZXMgdGhlIFRyZW5kbmV0IHBvcnRpb24gb2YgdGhlIE1BQyBidXQg
bm90IHRoZSBtb2RlbC4gIFRoaXMgaXMKdGhlIGJlaGF2aW9yIG9mIHRoZSBELUxpbmsgRElSLTgx
MEwgY29kZS4gIEFzIEknbSBuZXcgdG8gdGhlIGJ1aWxkCnN5c3RlbSBhbmQgd2FzIGJhc2luZyBt
eSBidWlsZCBvbiB0aGUgRElSLTgxMEwsIGRvIEkgbmVlZCB0byBkbyBtb3JlPwoKT24gTWFyIDA5
LCAyMDIwOiAxMzoyOCwgQWRyaWFuIFNjaG11dHpsZXIgd3JvdGU6Cj5IaSwKPgo+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRldmVsIFttYWlsdG86b3Blbndy
dC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXSBPbgo+PiBCZWhhbGYgT2YgSGVwcGxl
ciwgSi4gU2NvdHQKPj4gU2VudDogU2Ftc3RhZywgNy4gTcOkcnogMjAyMCAyMjoyNAo+PiBUbzog
b3BlbndydC1kZXZlbEBvcGVud3J0Lm9yZwo+PiBTdWJqZWN0OiBbT3BlbldydC1EZXZlbF0gcmFt
aXBzOiBhZGRpbmcgc3VwcG9ydCBmb3IgVFJFTkRuZXQgRElSLTgxMERSCj4+Cj4+IEknbSBsb29r
aW5nIGZvciBzb21lIGNsYXJpZmljYXRpb24gb24gYSBwcmlvciBwYXRjaDoKPj4KPj4gSSdtIGdl
bmVyYXRpbmcgYSBuZXcgc25hcHNob3QgYnVpbGQgYW5kIGhhdmUgdGhlIGZvbGxvd2luZyBxdWVz
dGlvbnM6Cj4+Cj4+IDEpICBNeSBwcmlvciBwYXRjaCB3YXMgY3JpdGljaXplZCBmb3IgYSBsYWNr
IG9mCj4+IG10NzYyMC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAxX2xlZHMgZW50cnkuICBJIHdh
cyBiYXNpbmcgbXkgYnVpbGQgb24KPj4gdGhlIEQtTGluayBESVItODEwTCB3aGljaCBzZWVtcyB0
byBoYXZlIHRoZSBzYW1lIENhbWVvIG1hbnVmYWN0dXJlZAo+PiBib2FyZC4gIFRoZSBELUxpbmsg
bGFja3MgYW55IGVudHJpZXMgaW4gMDFfbGVkcy4gIElzIHRoaXMgYW4gb3ZlcnNpZ2h0Cj4+IHRo
YXQgSSwgYW5kIERJUi04MTBMIGVudHJ5IHdpbGwgbmVlZCB0byBjb3JyZWN0PyAgT3IgaXMgaXQg
anVzdCBub3QKPj4gbmVlZGVkPwo+Cj5JIHdhcyBub3QgYXdhcmUgdGhhdCB0aGUgV0FOIExFRCBz
ZWVtcyB0byBiZSBjb250cm9sbGVkIGJ5IHRoZSBkcml2ZXIgYW5kIG5vdCBieSB0aGUgZGV2aWNl
LXRyZWUgb3IgdXNlcnNwYWNlIGNvZGUgKGFzIHJlcG9ydGVkIGJ5IFJvZ2VyKS4KPgo+SWYgdGhh
dCdzIGFsc28gdGhlIGNhc2UgZm9yIHlvdXIgZGV2aWNlLCB5b3Ugd29uJ3QgbmVlZCB0byBlbnRl
ciBhbnl0aGluZyBpbnRvIDAxX2xlZHMuCj4KPkhvdydzIHRoZSBXQU4gTEVEIGJlaGF2aW5nIGZv
ciB5b3UgYW5kIGlzIGl0IHJlZmVycmluZyB0byB0aGUgY29ycmVjdCBwb3J0IChvciBhIHdyb25n
IG9uZSBhcyBSb2dlciByZXBvcnRlZCBmb3IgRElSLTgxMEwpLgoKVGhlIEdsb2JlIExlbnMgd2hp
Y2ggY29udGFpbnMgZ3JlZW4gYW5kIG9yYW5nZShhbWJlcikgbGVkcyBpcwpub24tZnVuY3Rpb25h
bCBvbiB0aGUgVEVXLTgxMERSLiBJIGhhdmUgYSBURVctNzMyQlIgd2l0aCB0aGlzIGVudHJ5Ogp0
ZXctNzMyYnIpCnVjaWRlZl9zZXRfbGVkX25ldGRldiAid2FuIiAiV0FOIiAidHJlbmRuZXQ6Z3Jl
ZW46d2FuIiAiZXRoMSIKClRoaXMgbWFrZXMgbWUgdGhpbmsgdGhlcmUgaXMgYSBtaXNzaW5nIExF
RCBlbnRyeSBpbiB0aGUgRElSLTgxMEwgZHRzLgpQaHlzaWNhbGx5LCBib3RoIHRoZSBESVItODEw
TCwgVEVXLTczMkJSIGFuZCBURVctODEwRFIgaGF2ZSA0IExFRHM6ICAyCmdyZWVuIGFuZCAyIG9y
YW5nZShhbWJlcikgVGhlIHRocmVlIGNhc2VzIGhhdmUgYSBQb3dlciBsZW5zIGFuZCBhIEdsb2Jl
CmxlbnMuICBFYWNoIExlbnMgaGFzIGEgR3JlZW4gTEVEIGFuZCBhbiBPcmFuZ2UgTEVELiAgVGhl
IERJUi04MTBMIGR0cwpvbmx5IGhhcyAzIExFRCBlbnRyaWVzCmVudHJpZXMuCiAgICAgICAgbGVk
cyB7CiAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CgogICAgICAgICAg
ICAgICAgbGVkX3Bvd2VyX2dyZWVuOiBwb3dlcl9ncmVlbiB7CiAgICAgICAgICAgICAgICAgICAg
ICAgIGxhYmVsID0gImRpci04MTBsOmdyZWVuOnBvd2VyIjsKICAgICAgICAgICAgICAgICAgICAg
ICAgZ3Bpb3MgPSA8JmdwaW8wIDkgR1BJT19BQ1RJVkVfSElHSD47CiAgICAgICAgICAgICAgICB9
OwoKICAgICAgICAgICAgICAgIHdhbiB7CiAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0g
ImRpci04MTBsOm9yYW5nZTp3YW4iOwogICAgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwm
Z3BpbzAgMTIgR1BJT19BQ1RJVkVfSElHSD47CiAgICAgICAgICAgICAgICB9OwoKICAgICAgICAg
ICAgICAgIHBvd2VyX29yYW5nZSB7CiAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gImRp
ci04MTBsOm9yYW5nZTpwb3dlciI7CiAgICAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZn
cGlvMCAxMyBHUElPX0FDVElWRV9ISUdIPjsKICAgICAgICAgICAgICAgIH07CiAgICAgICAgfTsK
CkkgdGhpbmsgdGhlcmUgc2hvdWxkIGJlIGEgZGlyLTgxMGw6Z3JlZW46d2FuIG9uIEdQSU8gMTAg
b3IgMTEgb3IgMTQgb3IKMTUuIEkgc3VzcGVjdCBSb2dlcidzIERJUi04MTBMIEdsb2JlIGlzIG5v
dCBmdWxseSBmdW5jdGlvbmFsIGFuZCB3b3VsZApsaWtlIHRvIGNvbmZpcm0gd2l0aCBoaW0gYW5k
IHBvdGVudGlhbGx5IHdvcmsgd2l0aCBoaW0gb24gYSBjb21tb24gZml4CmZvciBib3RoLiAgRmVl
bCBmcmVlIHRvIGZvcndhcmQgbXkgZW1haWwgYWRkcmVzcyB0byBSb2dlci4KCj4KPj4KPj4gMikg
IEkgdGhpbmsgaXQgd291bGQgYmUgcG9zc2libGUgZm9yIGJvdGggdGhlIERJUi04MTBMIGFuZCBU
RVctODEwRFIgdG8KPj4gaGF2ZSBmYWN0b3J5LmJpbi4gIFByZXNlbnRseSwgYSBmYWN0b3J5IGlt
YWdlIGlzIG5lZWRlZCBmb3IgaW5pdGlhbAo+PiBpbnN0YWxsYXRpb24gYW5kIGlzIHByb2R1Y2Vk
IHVzaW5nIENhbWVvCj4+IGNhbWVvL25jYy9ob3N0VG9vbHMvbmNjX2F0dF9od2lkIHRvb2wuICBU
aGlzIHRvb2wgaXMgZGlmZmljdWx0IHRvIHVzZSBhcwo+PiBpdCByZXF1aXJlcyAzMmJpdCBsaWJz
IGFuZCBmdWxsIHBhdGhzIHRvIGltcGxlbWVudC4gIEVzc2VudGlhbGx5IHRoZQo+PiBmb2xsb3dp
bmcgc3RyaW5nIG5lZWRzIHRvIGJlIGFwcGVuZGVkIHRvIHRoZSBzeXN1cGdyYWRlIGltYWdlOgo+
PiAiCVRFVy04MTBEUgEEMS4xUgICV1cDAzEuMAUKPjEuMTNCMDQKPgo+SWYgeW91IHRoaW5rIGl0
J3MgZWFzeSwgaW5jbHVkZSBpdCBpbiB5b3VyIHBhdGNoIGFscmVhZHkuIE90aGVyd2lzZSwgZmly
c3QgcHJvdmlkZSBzeXN1cGdyYWRlIHN1cHBvcnQgYW5kIHRoZW4gcHJvdmlkZSBmYWN0b3J5IGlu
IGEgc2Vjb25kIHN0ZXAuCj4KPk9idmlvdXNseSwgbm90IGhhdmluZyBhIGZhY3RvcnkgaW1hZ2Ug
d2lsbCBtYWtlIHdyaXRpbmcgZmxhc2hpbmcgaW5zdHJ1Y3Rpb25zIG1vcmUgY29tcGxpY2F0ZWQu
Cj4KPkJlc3QKPgo+QWRyaWFuCj4KPgo+CgotLSAKSi4gU2NvdHQgSGVwcGxlcgoKUGVuZ3VpbiBJ
bm5vdmF0aW9ucwoKLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAt
IC0gLSAtIC0gLSAtIC0gLSAtIC0gCgoKTk9USUNFOiBUaGlzIGUtbWFpbCBtZXNzYWdlIGFuZCBh
bnkgYXR0YWNobWVudHMgbWF5CmNvbnRhaW4gbGVnYWxseSBwcml2aWxlZ2VkIGFuZCBjb25maWRl
bnRpYWwgaW5mb3JtYXRpb24gaW50ZW5kZWQKc29sZWx5IGZvciB0aGUgdXNlIG9mIHRoZSBpbnRl
bmRlZCByZWNpcGllbnRzLiBJZiB5b3UgYXJlIG5vdCBhbgppbnRlbmRlZCByZWNpcGllbnQsIHlv
dSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgeW91IGhhdmUKcmVjZWl2ZWQgdGhpcyBtZXNzYWdl
IGluIGVycm9yIGFuZCBhbnkgcmV2aWV3LCBkaXNzZW1pbmF0aW9uLApkaXN0cmlidXRpb24sIGNv
cHlpbmcsIG9yIG90aGVyIHVuYXV0aG9yaXplZCB1c2Ugb2YgdGhpcyBlbWFpbAphbmQgYW55IGF0
dGFjaG1lbnQgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2ZWQKdGhp
cyBlbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFu
ZApkZWxldGUgdGhlIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50cyBmcm9tIHlvdXIgc3lzdGVt
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
