Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD9D1931F3
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 21:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4QMHtjKVMEyvr5+FwrQaOwRCvD7kpMayviEwEs32ZJM=; b=aUi
	HA3a8wskn3SsgsvBGImx6jmk8Y7jU1fi5DG2wqXgtdJQGXwkaTbN/tbXKgtBWhlaPa7S28y8P03r7
	OT7DqYZ7F/Vwc3DXExviPpT46BmtsGRFF1yG/fCXcpLjnIW2eaC3SLJeuLXeD7QH1ONs39ZCXxiW0
	2gUxsGDqvj/oW7jwuBv9LVIy7Wxk6Wt5V/9BoHCx3IFPlEIwZC/DaVgUMB/ESsx83NjMbJaxQZnus
	VrKf4SkSwVjcaY16+IpwZmmemLKRt525Gry99+afDKImEEqF/hYSVzuD7XDu7Wz1VdYFGj/Cpt/lu
	g77JBEdahTTpDTwa4JLifgH/Q/hlpXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHChT-0006OI-9O; Wed, 25 Mar 2020 20:32:31 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHChM-0006NV-Er
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 20:32:26 +0000
Received: by mail-wr1-x42d.google.com with SMTP id j17so4933180wru.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 13:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:message-id:subject:mime-version:autocrypt;
 bh=PaZgT34XvvsiPpKfRZ2S3pE8TyuWpjnKvyxUbAb70s8=;
 b=jsUYUOGAOkyfCvzJx/6HFnKyNZCIBVN0E/7tBoca7KxdybFM39Lg162s/9MHfmgAqP
 fiLSew3b6s9BpcvXv6vOLdrAzEeIU+NGnn8fNGhYLhuLieFaoSvEye0riqUEzi2ZxcGJ
 LBcNg40/dHZ5TKhecuYw1prQvLHI6kDqa2cjO7JDgcOm41dvYsaRM/aTw8tG+WVxt2Tm
 NJz2Ve1cIDFM2HD5MlFScm1kweR40gZSGVXDQz3usym/6OzOVKn92etDDzVCq9vHVhnn
 EaUCLzum2nhEadwx1ILdQ6tclImnacDF1VTHFAO8wr1I5QtgFHwuRCAYJ7vGiMMGuEej
 Gr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:message-id:subject:mime-version
 :autocrypt;
 bh=PaZgT34XvvsiPpKfRZ2S3pE8TyuWpjnKvyxUbAb70s8=;
 b=EMK4y2bKUKkGu4sJ16p+50RzgtMzKYAZC3ZpDXmHBt8B0Ta33Gd+lWktA81Oqd1mP5
 AhQJ6mWRPnDC+c0A2Nozw0uhtXi8vdVnW5yWTu4YH67N/hCrqmWKu4VrXURUucTfZpON
 MisUfN/rw4cX4MTrAwC6gZd6uA6Ybzc4MWo2QdOrDPH6bN5tSyoINbsLjxl4Jonx6zrL
 nOdRf2ht1nbos5E6gCYilGoPXj4Psmwu3yCbzby1kQsTDPA0qM/q978sljnrqeyH1Zfp
 HZ8qM8cGVYkE30f5PO0LlsM/rHo/lZaZ+92MzpUEjTtKAfp1C51Q3lY8PUY1qAZCd2nE
 SAWg==
X-Gm-Message-State: ANhLgQ1qOm9Pb7Kq8HMI6zJtHiwK7AxubOuWENz+tH4zRJ7kxSYfUE2M
 aUeFaPrvUefA8Zq2W6az6wrOxadtzKEONw==
X-Google-Smtp-Source: ADFU+vtthQQ9rYsh+s0WtH4lLXvTzc13FuPkfzAyOK+x/a4st7kJErO6EBou/8WmS613oyxwlow/6g==
X-Received: by 2002:adf:e848:: with SMTP id d8mr5183793wrn.209.1585168341113; 
 Wed, 25 Mar 2020 13:32:21 -0700 (PDT)
Received: from [127.0.0.1] (216.232.146.77.rev.sfr.net. [77.146.232.216])
 by smtp.gmail.com with ESMTPSA id i4sm184789wrm.32.2020.03.25.13.32.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 13:32:19 -0700 (PDT)
Date: Wed, 25 Mar 2020 20:32:09 +0000 (UTC)
From: =?UTF-8?Q?Valent=C3=ADn_K=2E_B=2E?= <vk18496@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <f65ba12f-b054-478c-ba35-25cc89309d8a@localhost>
MIME-Version: 1.0
X-Correlation-ID: <f65ba12f-b054-478c-ba35-25cc89309d8a@localhost>
Autocrypt: addr=vk18496@gmail.com; prefer-encrypt=mutual; keydata=
 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
 hw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_133224_502029_518B0E13 
X-CRM114-Status: UNSURE (   4.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vk18496[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [vk18496[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.4 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.7 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
Subject: [OpenWrt-Devel] Zig cc
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
Content-Type: multipart/mixed; boundary="===============0090736601715439964=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0090736601715439964==
Content-Type: multipart/signed; micalg=pgp-sha512; 
	protocol="application/pgp-signature"; 
	boundary="----=_Part_49_49739022.1585168329074"

------=_Part_49_49739022.1585168329074
Content-Type: multipart/alternative; 
	boundary="----=_Part_47_185823392.1585168327913"

------=_Part_47_185823392.1585168327913
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

CkhpLAoKVGhpcyBpcyBteSBmaXJzdCBtYWlsIGhlcmUgOikKCkkgZm91bmQgdGhpcyBhcnRpY2xl
IGFib3V0IHppZyBjYyAoICJuZXcgcHJvZ3JhbW1pbmcgbGFuZ3VhZ2Ugd2hpY2ggaXMgYW1iaXRp
b3VzbHkgdHJ5aW5nIHRvIG92ZXJ0aHJvdyBDIGFzIHRoZSBkZS1mYWN0byBzeXN0ZW1zIGxhbmd1
YWdlLiAiKS4gSSBmb3VuZCByZWFsbHkgaW50ZXJlc3RpbmcgaXQgZm9jdXMgb24gY3Jvc3MtY29t
cGlsYXRpb24gYW5kIGVhc3kgdG8gaW5hdGFsbC91c2UuCgpNYXliZSBjb3VsZCBiZSBpbnRlcmVz
dGluZyBmb3IgT3BlbldydCBwcm9qZWN0PwoKTGluazogaHR0cHM6Ly9hbmRyZXdrZWxsZXkubWUv
cG9zdC96aWctY2MtcG93ZXJmdWwtZHJvcC1pbi1yZXBsYWNlbWVudC1nY2MtY2xhbmcuaHRtbCBb
aHR0cHM6Ly9hbmRyZXdrZWxsZXkubWUvcG9zdC96aWctY2MtcG93ZXJmdWwtZHJvcC1pbi1yZXBs
YWNlbWVudC1nY2MtY2xhbmcuaHRtbF0KCgpCciwKVmFsZW50w61uCgo=
------=_Part_47_185823392.1585168327913
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+CiA8aGVhZD48L2hlYWQ+IAogPGJvZHk+IAogIDxwIGRpcj0ibHRyIj5IaSw8L3A+IAog
IDxwIGRpcj0ibHRyIj5UaGlzIGlzIG15IGZpcnN0IG1haWwgaGVyZSA6KTwvcD4gCiAgPHAgZGly
PSJsdHIiPkkgZm91bmQgdGhpcyBhcnRpY2xlIGFib3V0IHppZyBjYyAoPGk+Im5ldyBwcm9ncmFt
bWluZyBsYW5ndWFnZSB3aGljaCBpcyBhbWJpdGlvdXNseSB0cnlpbmcgdG8gb3ZlcnRocm93IEMg
YXMgdGhlIGRlLWZhY3RvIHN5c3RlbXMgbGFuZ3VhZ2UuPC9pPiIpLiBJIGZvdW5kIHJlYWxseSBp
bnRlcmVzdGluZyBpdCBmb2N1cyBvbiBjcm9zcy1jb21waWxhdGlvbiBhbmQgZWFzeSB0byBpbmF0
YWxsL3VzZS48L3A+IAogIDxwIGRpcj0ibHRyIj5NYXliZSBjb3VsZCBiZSBpbnRlcmVzdGluZyBm
b3IgT3BlbldydCBwcm9qZWN0PzwvcD4gCiAgPHAgZGlyPSJsdHIiPkxpbms6IDxhIGhyZWY9Imh0
dHBzOi8vYW5kcmV3a2VsbGV5Lm1lL3Bvc3QvemlnLWNjLXBvd2VyZnVsLWRyb3AtaW4tcmVwbGFj
ZW1lbnQtZ2NjLWNsYW5nLmh0bWwiPmh0dHBzOi8vYW5kcmV3a2VsbGV5Lm1lL3Bvc3QvemlnLWNj
LXBvd2VyZnVsLWRyb3AtaW4tcmVwbGFjZW1lbnQtZ2NjLWNsYW5nLmh0bWw8L2E+PGJyPjwvcD4g
CiAgPHAgZGlyPSJsdHIiPkJyLDxicj4gVmFsZW50w61uPC9wPiAgCiA8L2JvZHk+CjwvaHRtbD4=

------=_Part_47_185823392.1585168327913--

------=_Part_49_49739022.1585168329074
Content-Type: application/pgp-signature; name=signature.asc
Content-Transfer-Encoding: 7bit
Content-Disposition: inline; filename=signature.asc

-----BEGIN PGP SIGNATURE-----

iQHBBAABCgArJBxWYWxlbnTDrW4gSy4gQi4gPHZrMTg0OTZAZ21haWwuY29tPgUC
Xnu/yAAKCRDRotpoc10jxQOKC/4mZab/Yhdt16EhAJHsm5ciLqZDLWuOdCkVy1l2
NesKAMab6w37GditodtE2g016FbI8qqo7cM/gFbfFUhPz5mYScRR725ZP35lTYpX
n0eRqasxhuDYSiTx6yq7AgNn53BaKgjy0Vp+xbrww69yB1C8UXj7ljMEf/aUVR3T
FmpaZ7WF/PvSGp48hTPPhVeIM5P6jUaDDN0uR/F72gboS8Hbgfm7ArWyyBNkstQL
Kioo0WH6I3CAJVcSPGApcxS3fOnhBkxvVsTDRw1nZpQyG0GTQedTZnh34qIcy/n3
MKZaFTSsZI6JsOzbrMDk9/fWsKUTNGGtXlOf/FSpIokpAdZ7eV6KP5AI1HCGOAGX
vPv3e8mArSRFKMywkxVAk00SnpgvIFKWW8BKzElekwq2cMWUcrWgHxgr+pY5UmRk
1m4EdA05l5qE362ZQIfFtrroapKArCepg6rex1eGXSMKzbhgbonpJt0N3XQdwADT
wGqZ50AEG04cDsOYvPtXFKwNNwI=
=FVum
-----END PGP SIGNATURE-----

------=_Part_49_49739022.1585168329074--


--===============0090736601715439964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0090736601715439964==--

