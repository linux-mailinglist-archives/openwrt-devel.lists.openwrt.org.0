Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0B112AF4D
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 23:32:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ge6pjrR7dCJgUJ7mkWrbvuuzmiBQj+fhaffowaR7tBA=; b=ATdvYuZozC4W0+
	ny5AFiP9MxO5K2wrhUjIZDUmNMBPiSK+KlwaQsQVie+EKxX1GhpUHzmccBrFuxx3BU0fsz7J8H6HY
	XPhAwCptCtr/YqXYNZwNP5GxPG/5JW4uETX545PhlUvfstHJ1zfOByRcCVHokGNbOdnhLue8IJRAU
	YjhRehoyqBK8jJPgpR3kYeBKnhAEP0/viC7BDp/aUKwxQInHJ3UvCXvV5l0ipbhI3cdz41qBNB4Hx
	8vVeKngx8NsjO8gU0bXjMcRN3ATRxx9OsEZ4Nqzamyej9ypTSQ8U/nWG72lTWVMIV+VC56tIi9gH5
	ovtwVxKjac8JwJr2WWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbfj-0000Za-S4; Thu, 26 Dec 2019 22:31:59 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbfb-0000Z2-2U
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 22:31:52 +0000
Received: by mail-qk1-x743.google.com with SMTP id c17so20335906qkg.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 14:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=K1TTNrEkuT9hdJvAG0RXTX04fsVthXk2DPxzsJ5rPQE=;
 b=S/8sjTo7Zx2uDmU4lL4ijanidmzcNdOIHfAA7EnCadX100Hwkr41hCpNePVBYq4KCA
 A/GJh6DIxYVUBdcjM9R0tixu11Ig5DYDLJjMHmDNTx1O9CSEPLquDGorzwMYerCzRbY4
 k+b08UNDNYYJZfQEjph//qLP1HIa4LTxZTBxvBI0rrfVYRLKZqEkgNVsg2L2Jia8z9k0
 ziDj9hE7N8euYulcrobG27atE1bbMzWw5/o/Vwnxv18tPYTFFSllWHPVzqAfEAfp39ez
 roh73rnKK2KZmpnjUPBUsvP1DVNMl1/Wd1p/eE+W+lApCIF2oz+A8E7VSDQVaR2Y174T
 wAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=K1TTNrEkuT9hdJvAG0RXTX04fsVthXk2DPxzsJ5rPQE=;
 b=j8DUe6todl+UZBiGM24Rc1t7s9Yd98nUch7+C4zqXpTAfb/Lg2AGyT+jid9hHXN+Lj
 GQxEEAdcQxhNFS2/ha2U8j499/zZLzd95n6WW3y7ZSevVAeLsmIe+nLpuO9oprK3IDLr
 BjhT2tcmKfrD7EKP88sOhxgWiqlpWyIyjFI5RiGCljJ4ZLmxi7Td51VZW26ALmhwvkn3
 sUe0W7nCCL3ike5uwLSjS2zmB3q7TPP/ZebTMaq7XWoOhosOTpxjFHABirtBCn11V0n0
 7ipGs3z4f9NPS3F5Wn1g45oBikXrAKnvzWyR/vrtYbjcwe84RZQEbmIdnSJDhLNSN9Sl
 LPdQ==
X-Gm-Message-State: APjAAAU8YhTLOvVAqUTC1C+qmEPejuAo2Sbu63a7t14tvbIWrH6y14pb
 hdIShXXjG8eimrUSOFHD20JFo9AhhvyUaWcss1YkRXj3H3g=
X-Google-Smtp-Source: APXvYqz+HPuOf9easrXIfjBDngFYHKesrHE88Zc7KLu/iZKNZqI4w52aoqsyKymfFGzpAdf3kR5EXAglML6wLjIiQr0=
X-Received: by 2002:ae9:ef50:: with SMTP id d77mr39534931qkg.71.1577399509028; 
 Thu, 26 Dec 2019 14:31:49 -0800 (PST)
MIME-Version: 1.0
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224215051.GF70645@meh.true.cz>
 <b3d98fd9-34a0-31cc-c4ce-c311bcec3d38@hauke-m.de>
In-Reply-To: <b3d98fd9-34a0-31cc-c4ce-c311bcec3d38@hauke-m.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 26 Dec 2019 14:31:22 -0800
Message-ID: <CAMKF1soqVxRsawUbHYmL1QFO-n6OXF_5Xh0WyxYuReOgv692uQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_143151_115842_8D3DF82C 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raj.khem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCBEZWMgMjYsIDIwMTkgYXQgNDo1MCBBTSBIYXVrZSBNZWhydGVucyA8aGF1a2VAaGF1
a2UtbS5kZT4gd3JvdGU6Cj4KPiBPbiAxMi8yNC8xOSAxMDo1MCBQTSwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiA+IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IFsyMDE5LTEyLTI0IDEwOjAy
OjEzXToKPiA+Cj4gPiBIaSwKPiA+Cj4gPiB1c2UgIlBBVENIIGxpYnVib3giIHN1YmplY3QgcHJl
Zml4LCBiZWNhdXNlIHRoZXJlIGlzIG5vIGJsb2Jtc2cuYyBmaWxlIGluIHRoZQo+ID4gbWFpbiB0
cmVlLgo+ID4KPiA+PiBGaXhlcyBlcnJvcjogJ19fYnVpbHRpbl9zdHJjcHknIG9mZnNldCA2IGZy
b20gdGhlIG9iamVjdCBhdCAnYXR0cicgaXMgb3V0IG9mCj4gPj4gdGhlIGJvdW5kcyBvZiByZWZl
cmVuY2VkIHN1Ym9iamVjdCAnbmFtZScgd2l0aCB0eXBlICd1aW50OF90WzBdJyB7YWthCj4gPj4g
J3Vuc2lnbmVkIGNoYXJbMF0nfSBhdCBvZmZzZXQgNiBbLVdlcnJvcj1hcnJheS1ib3VuZHNdCj4g
Pgo+ID4gb3V0IG9mIGN1cmlvc2l0eSwgd2hpY2ggdGFyZ2V0L2NvbXBpbGVyIGlzIHRoYXQ/IEkn
bSBub3QgYWJsZSB0byByZXByb2R1Y2UKPiA+IGl0IG9uIGFueSBvZiB0aGUgcHJlLXNlbGVjdGVk
IENJIHRhcmdldHNbMV0uCj4KPiBIaSBQZXRyLAo+Cj4gVGhlIGZvcnRpZnkgaGVhZGVycyBhcmUg
cHJldmVudGluZyBzb21lIG9mIHRoZXNlIHdhcm5pbmdzLCBJIHNlZSB0aGVtCj4gd2hlbiBjb21w
aWxpbmcgd2l0aG91dCBmb3J0aWZ5IGhlYWRlciBvciB3aGVuIHVzaW5nIGdsaWJjLgo+Cj4gSSBz
dGFydGVkIHRvIGxvb2sgaW50byB0aGlzIHByb2JsZW0sIGJ1dCBpdCBsb29rcyBtb3JlIGNvbXBs
aWNhdGVkIHRvCj4gY2hhbmdlIHRoZSBmb3J0aWZ5IGhlYWRlcnMgaW4gYSB3YXksIHRoYXQgdGhl
IGNvbXBpbGUgdGltZSBidWZmZXIKPiBvdmVyZmxvdyBkZXRlY3Rpb24gc3RpbGwgd29ya3MgbGlr
ZSBleHBlY3RlZCBmb3IgYWxsIGZ1bmN0aW9ucyB3aGljaCBhcmUKPiBzdXBwb3J0ZWQgYnkgZ2Nj
Lgo+CgpJIGRvIHVzZSB0aGVzZSBmbGFncwotZnN0YWNrLXByb3RlY3Rvci1zdHJvbmcgIC1EX0ZP
UlRJRllfU09VUkNFPTIgLVdmb3JtYXQKLVdmb3JtYXQtc2VjdXJpdHkgLVdlcnJvcj1mb3JtYXQt
c2VjdXJpdHkKCmFuZCBwZXJoYXBzIHRoYXQgY29tYmluZWQgd2l0aCBnY2MxMCBleHBvc2VzIHRo
aXMgaXNzdWUuCgo+IFBsZWFzZSBhbHNvIHVzZSBhIHRvb2xjaGlhbiB3aXRoIGdsaWJjIHdoZW4g
Y29tcGlsaW5nIGluIENJLgo+Cj4gSGF1a2UKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
