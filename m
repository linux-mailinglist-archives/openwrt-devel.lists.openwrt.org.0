Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF08188BA6
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 18:07:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x42NOPlE9v9bH/WhGzsSbqdP6FoxF9sEfDvaSZ3UR3M=; b=MBYOVkDIeSUNefrYISDOTjjSG
	N5eX4cgERtk5uombY5mUcKYRPKunpXiDcvmpCswAo3MT7GtowEsMgxyxA1hUkv/JhFU4ZagJMoGyz
	HrnQEzW7pCnt8HFLdCRZ8bCswGbPyiKPj/a/INov7h/5cfo5f5jrOt2VnvfInFs+12oQxsXKhDS4i
	OyEuIXplkubCyP7k5lEl8MtsptA7pzCJaVacvaICHN6JEtEOBv773cF28xFsEA+/81AtrzklD7HhI
	bfqHG76k/z3gspyI/gT+Z3Md2ZvAE7fSMeBwSDdIZXPi2wUW8FSQ+QV8lKQT98uNxjClvQQ5+JqoK
	FjO+gw+EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFgc-00014U-94; Tue, 17 Mar 2020 17:07:26 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFgU-00013a-5D
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 17:07:19 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id C480D13C344
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Mar 2020 10:07:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com C480D13C344
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1584464837;
 bh=UzPnfB2tOCCNP+J6fOrVkEWoHJhMT+Df/NJSSBSfa98=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=aZuUZE1zEy+k31E4ijdvqFofYdei+MXRsG2U3m4u6xrnh8FvW4TzhQcIX8aIj+jzt
 JyzpMk5XV9OrHbk/rgpcEiN98DmBzRsOaCFVJxi734GcEgqsysJEF6gIAijIu0FnaF
 goxacqPvaPuqVeSztnzDL8pyKUeXSy54h9PkKjig=
From: Ben Greear <greearb@candelatech.com>
To: openwrt-devel@lists.openwrt.org
References: <dbe48552-9caa-9f63-a239-920389db6f09@candelatech.com>
Organization: Candela Technologies
Message-ID: <9bbf4743-3ddb-5a61-48ab-2588aae7f251@candelatech.com>
Date: Tue, 17 Mar 2020 10:07:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <dbe48552-9caa-9f63-a239-920389db6f09@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_100718_225789_77F62A77 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] New ath10k-ct driver,
 supports vlans on 10.1 firmware.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U29ycnkgZm9yIHRoZSBzdGFsZSBzdWJqZWN0LCB0aGlzIG9uZSBpcyBOT1QgYWN0dWFsbHkgYWJv
dXQgdmxhbnMuCgpPbiAzLzE3LzIwIDEwOjAxIEFNLCBCZW4gR3JlZWFyIHdyb3RlOgo+IGNvbW1p
dCA4ZGYwYTdmODBhOGJiMmM0OWQzYTE2ZmU3MGY5YTYxOWQ3YmVkZDVhIChIRUFEIC0+IG1hc3Rl
ciwgb3JpZ2luL21hc3RlcikKPiBBdXRob3I6IEJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRl
Y2guY29tPgo+IERhdGU6wqDCoCBUdWUgTWFyIDE3IDA5OjU4OjI1IDIwMjAgLTA3MDAKPiAKPiAg
wqDCoMKgIGF0aDEway1jdDrCoCBQdWxsIGluIHJlY2VudCA1LjQgc3RhYmxlLCBldGMKPiAKPiAg
wqDCoMKgIEluY2x1ZGVzIGJldHRlciB0eC1vdmVycmlkZSBzdXBwb3J0IGZvciB3YXZlLTEKPiAg
wqDCoMKgIFdhdmUtMSBjYW4gbm93IGRpc2FibGUgcGVyaW9kaWMgY2FsaWJyYXRpb24gKEkgdGhp
bmssCj4gIMKgwqDCoCBub3Qgc3VyZSBpdCB3b3JrcyBwcm9wZXJseSwgYnV0IG9ubHkgdXNlZnVs
IGZvciB0ZXN0aW5nIGFueXdheQo+ICDCoMKgwqAgbW9zdCBsaWtlbHkpLgo+IAo+ICDCoMKgwqAg
U2lnbmVkLW9mZi1ieTogQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+Cj4gCj4g
SWYgc29tZW9uZSBjYW4gcHVsbCB0aGlzIGludG8gT3BlbldSVCBhbmQgdGVzdCBJJ2QgYXBwcmVj
aWF0ZSBpdC4KPiAKPiBOZXcgZmlybXdhcmUgaW1hZ2VzIGNvbWluZyBzaG9ydGx5Li4uCj4gCj4g
VGhhbmtzLAo+IEJlbgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
