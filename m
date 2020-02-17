Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2101316157F
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Feb 2020 16:05:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7ABMzrbqLeaIPJToBZgE9QpiAaJjweKQIAeaDFvzGns=; b=gyYw1/c8ff3cly
	yZthqXbwXAotc5tino90i13wHxGmL0sElUB9kOw6vxJ6eIoAaxgAWDUDg4ZR9cWVqeDJRXfOpPPYp
	klYiCpI1iqkWTWZuLycEOolydf/Y9V7e5BelnRJU2IzvaIZ+d/Hb1Dw5XtwnOX8DFr9rjmjQnFUvQ
	oVHgqh3AX0MvJpvLZHO0/nJDcmSKZfpVcwh6Jp7PQaDLND5+bvP6ys1OONGTQ0/EbJD6KA2Fi4nHr
	+gbqOSxO6GVOdIskCBsLFpv/j1zAnc6jZGN2AunvmClwVmehjX4isV5DAYJEfn/1wu2zTXSSDe9Yk
	mymsHPSiMxb9Nlpd7Mnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hwr-0000ER-Nh; Mon, 17 Feb 2020 15:04:37 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hwj-0000Cb-Qn
 for openwrt-devel@lists.openwrt.org; Mon, 17 Feb 2020 15:04:31 +0000
Received: by mail-qt1-x82a.google.com with SMTP id k7so12188205qth.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Feb 2020 07:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=KQEL/VJKSP33OWz4LYOuUR4oRXrTqTqeHVDYFTAlMPA=;
 b=dqMPFwZdxIdhWb2NlatG8rXxe9lkPBPKPDfMzvjUsl8CDqWUGvncA9zsjm1+MXIqsO
 rm+dGCPezNGAAmbclkjdtvqFTW6OjJtJz9a5en6izbdv/xMOftR00A3suNcy+gqbzxdi
 us4C/+1+rfxG+MW9IlxtdEPgiUMMcpPYi10boUvhrh9LG45hT8UYYDiI6Gg/HTnEcGex
 lASx3yHmfJMkehz+Dx1VPigz82XRTdGW2ZuJFQWFPuCpNYfCdtnI+0+CFjbayjzbr1uC
 dOfEZqmZ7vr2uYM4NlCRXPoq2bJo1NYMeV5VZYAptU15ufgeb3XJ+7fSWw+h6bYnIUKK
 e7zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=KQEL/VJKSP33OWz4LYOuUR4oRXrTqTqeHVDYFTAlMPA=;
 b=fS9EuSa8b2tfkJUf+W3nmQ60ZGcDlPXyQV+xYTOGGoOFjWpnlxv384fosXCxC5FG/U
 uoPt7H8+ACU8YrNhkCczrLZTfcih/UM1R5JB0uuWK0U8DIEv1JJ56LUE/m591OiNJKDG
 b1Q4lI1/ujm00IBzea7tuqARoJmMs4Z0RGbnp5Px6AeqlYgKuoWUFXx98N4/sGYbEsML
 YlkX+SrGq93W3GFuzl7U590RqlAwKwOyT2iHDJm6VRHIHBg+mJaCyxawtm/uvFhUGofJ
 rDb5TGbglvvavMfgCYxNN9eAYt/oGnaYs7sUmKz1ADrTrH0YH+BFDr8hVSg9cUYVaia5
 2v4w==
X-Gm-Message-State: APjAAAUXpiSyb5byJ7/pghFdJHkCgR6g0InTB9u5N1Ku65dwxARNx79s
 CJH1BaM/4RCRr28lbuodzQuIuBQU
X-Google-Smtp-Source: APXvYqztBbBq/c9tkX0viYiraW7+ibfEJg+RNKP4EhDFhrudz/5F9LCWk4gBPuPxn+TAlptwi06ksA==
X-Received: by 2002:ac8:6a04:: with SMTP id t4mr3795286qtr.213.1581951865718; 
 Mon, 17 Feb 2020 07:04:25 -0800 (PST)
Received: from lord-gnome.lan (pool-100-8-210-135.nwrknj.fios.verizon.net.
 [100.8.210.135])
 by smtp.googlemail.com with ESMTPSA id j28sm347180qki.61.2020.02.17.07.04.24
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 07:04:24 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
From: Christopher Hill <ch6574@gmail.com>
Autocrypt: addr=ch6574@gmail.com; prefer-encrypt=mutual; keydata=
 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
 aBKLz78CnHfMSbo=
Message-ID: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
Date: Mon, 17 Feb 2020 10:03:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_070429_892218_01291C4D 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ch6574[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ch6574[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
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

SGksCgpOZXcgaGVyZSwgYW5kIGFtIGxvb2tpbmcgZm9yIHNvbWUgYWR2aWNlIG9uIHBvcnRpbmcg
YW4gZXhpc3RpbmcgZGV2aWNlCnRvIGF0aDc5IC0gc3BlY2lmaWNhbGx5IGEgTWlrcm90aWsgUkI0
OTNHICh3aGljaCBpcyBOQU5EKS4KClRoZSBhcmVhIEknbSBsb29raW5nIGZvciBndWlkYW5jZSAv
IHRpcHMgb24gaXMgZ2V0dGluZyB0aGUgbHptYS1sb2FkZXIKdG8gYm9vdCB0aGUgbmV3IGtlcm5l
bC4gSSBoYXZlIGNvbXBpbGVkIGEgbmV3IGltYWdlKiBhbmQgSSBjYW4gdGZ0cCBib290CnRoaXMg
YW5kIHNlZSBvbiB0aGUgc2VyaWFsIGNvbnNvbGUgdGhlIGx6bWEtbG9hZGVyIHJ1bm5pbmcgYW5k
CmRlY29tcHJlc3NpbmcgdGhlIGtlcm5lbCBhbmQgdGhlbiBzdGFydGluZyBpdC4uLiBidXQgdGhl
biBub3RoaW5nCmhhcHBlbnMgbmV4dC4KCkkgaGF2ZSB0d28gcXVlc3Rpb25zIGJlbG93IHRoYXQg
SSB3b3VsZCBiZSBncmF0ZWZ1bCBmb3IgYW55IG9waW5pb25zIG92ZXIuCgpUaGFua3MsCkNocmlz
CgoKKiBUaGUgbmV3IGR0cyBmaWxlIGFuZCBtYWtlZmlsZSBjaGFuZ2VzIGFyZSBoZXJlOgpodHRw
czovL2dpdGh1Yi5jb20vY2g2NTc0L29wZW53cnQvdHJlZS9yYjQ5M2cKCgoKVGhpcyBpcyB3aGF0
IEkgc2VlIG9uIHRoZSBzZXJpYWwgY29uc29sZToKCiAgT3BlbldydCBrZXJuZWwgbG9hZGVyIGZv
ciBBUjdYWFgvQVI5WFhYCiAgQ29weXJpZ2h0IChDKSAyMDExIEdhYm9yIEp1aG9zIDxqdWhvc2dA
b3BlbndydC5vcmc+CiAgRGVjb21wcmVzc2luZyBrZXJuZWwuLi4gZG9uZSEKICBTdGFydGluZyBr
ZXJuZWwgYXQgODAwNjAwMDAuLi4KClRoYXQncyBpdC4KCkkndmUgdHJpZWQgYWRkaW5nIGV4dHJh
IGJvb3RhcmdzICJlYXJseWNvbiIgYW5kICJlYXJseXByaW50ayIgaW4gdGhlIGR0cwoiY2hvc2Vu
IiBzZWN0aW9uIGhvd2V2ZXIgSSBzdGlsbCBkb24ndCBzZWUgYW55dGhpbmcuIFJ1bm5pbmcgYmlu
d2FsayBvbgpteSBuZXcgYXRoNzkgaW1hZ2UgdnMgdGhlIDE5LjA3IGFyNzF4eCBpbml0cmFtZnMg
aW1hZ2UgcmV2ZWFscyBzb21lCmRpZmZlcmVuY2VzOgoKMTkuMDEgYXI3MXh4OgoKICBERUNJTUFM
IEhFWEFERUNJTUFMIERFU0NSSVBUSU9OCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIDAgICAg
ICAgMHgwICAgICAgICAgRUxGLCAzMi1iaXQgTVNCIE1JUFMtSSBleGVjdXRhYmxlLCBNSVBTLCB2
ZXJzaW9uIDEKKFNZU1YpCiAgOTU4MCAgICAweDI1NkMgICAgICBDb3B5cmlnaHQgc3RyaW5nOiAi
Q29weXJpZ2h0IChDKSAyMDExIEdhYm9yIEp1aG9zCjxqdWhvc2dAb3BlbndydC5vcmc+IgogIDk3
ODggICAgMHgyNjNDICAgICAgTFpNQSBjb21wcmVzc2VkIGRhdGEsIHByb3BlcnRpZXM6IDB4NkQs
IGRpY3Rpb25hcnkKc2l6ZTogODM4ODYwOCBieXRlcywgdW5jb21wcmVzc2VkIHNpemU6IDc1NDM1
NTYgYnl0ZXMKCk5ldyBhdGg3OToKCiAgREVDSU1BTCBIRVhBREVDSU1BTCBERVNDUklQVElPTgoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAwICAgICAgIDB4MCAgICAgICAgIEVMRiwgMzItYml0
IE1TQiBNSVBTLUkgZXhlY3V0YWJsZSwgTUlQUywgdmVyc2lvbiAxCihTWVNWKQogIDk1MzIgICAg
MHgyNTNDICAgICAgQ29weXJpZ2h0IHN0cmluZzogIkNvcHlyaWdodCAoQykgMjAxMSBHYWJvciBK
dWhvcwo8anVob3NnQG9wZW53cnQub3JnPiIKICA5NzQwICAgIDB4MjYwQyAgICAgIExaTUEgY29t
cHJlc3NlZCBkYXRhLCBwcm9wZXJ0aWVzOiAweDZELCBkaWN0aW9uYXJ5CnNpemU6IDgzODg2MDgg
Ynl0ZXMsIHVuY29tcHJlc3NlZCBzaXplOiAxMjczOTU4MiBieXRlcwoKU28gbXkgYXRoNzkgaW1h
Z2UgaXMgcXVpdGUgYSBsb3QgYmlnZ2VyLCBhbG1vc3QgZG91YmxlLgoKClF1ZXN0aW9uIDEgLSAg
QW0gSSBydW5uaW5nIGludG8gc2l6ZSBpc3N1ZXMgYW5kIHNpbXBseSBjbG9iYmVyaW5nIG90aGVy
CmFyZWFzIG9mIG1lbW9yeT8KCgoKCgpOZXh0IHVzaW5nIGJpbndhbGsgdG8gZXh0cmFjdCBhbmQg
dW5wYWNrIHRoZSBMWk1BIGRhdGEgcmV2ZWFscyB0aGVpcgpjb250ZW50IGlzIHZlcnkgZGlmZmVy
ZW50OgoKMTkuMDEgYXI3MXh4OgoKICAkIHRyZWUKX29wZW53cnQtMTkuMDcuMC1hcjcxeHgtbWlr
cm90aWstdm1saW51eC1pbml0cmFtZnMtbHptYS5lbGYuZXh0cmFjdGVkLyB8CmhlYWQgLTIwCiAg
X29wZW53cnQtMTkuMDcuMC1hcjcxeHgtbWlrcm90aWstdm1saW51eC1pbml0cmFtZnMtbHptYS5l
bGYuZXh0cmFjdGVkLwogIOKUnOKUgOKUgCAyNjNDCiAg4pSc4pSA4pSAIDI2M0MuN3oKICDilJTi
lIDilIAgXzI2M0MuZXh0cmFjdGVkCiAgICAgIOKUnOKUgOKUgCA0NURCODgueHoKICAgICAg4pSc
4pSA4pSAIDRGMkQzNAogICAgICDilJzilIDilIAgNEYyRDM0Ljd6CiAgICAgIOKUlOKUgOKUgCBf
NEYyRDM0LmV4dHJhY3RlZAogICAgICAgICAg4pSc4pSA4pSAIDAuY3BpbwogICAgICAgICAg4pSU
4pSA4pSAIGNwaW8tcm9vdAogICAgICAgICAgICAgIOKUnOKUgOKUgCBiaW4KICAgICAgICAgICAg
ICDilIIgICDilJzilIDilIAgYXNoIC0+IGJ1c3lib3gKICAgICAgICAgICAgICDilIIgICDilJzi
lIDilIAgYm9hcmRfZGV0ZWN0CiAgICAgICAgICAgICAg4pSCICAg4pSc4pSA4pSAIGJ1c3lib3gK
ICAgICAgICAgICAgICDilIIgICDilJzilIDilIAgY2F0IC0+IGJ1c3lib3gKICAgICAgICAgICAg
ICDilIIgICDilJzilIDilIAgY2hncnAgLT4gYnVzeWJveAoKCk5ldyBhdGg3OToKCiAgJCB0cmVl
Cl9vcGVud3J0LWF0aDc5LW5hbmQtbWlrcm90aWtfcm91dGVyYm9hcmQtcmI0OTNnLWluaXRyYW1m
cy1rZXJuZWwuYmluLmV4dHJhY3RlZC8KICDilJzilIDilIAgMjYwQwogIOKUnOKUgOKUgCAyNjBD
Ljd6CiAg4pSU4pSA4pSAIF8yNjBDLmV4dHJhY3RlZAogICAgICDilJzilIDilIAgWwogICAgICDi
lJzilIDilIAgW1sKICAgICAg4pSc4pSA4pSAIDAwLW5ldHN0YXRlCiAgICAgIOKUnOKUgOKUgCAw
MF9wcmVpbml0LmNvbmYKICAgICAg4pSc4pSA4pSAIDAwLXN5c2N0bAogICAgICDilJzilIDilIAg
MDAtd2lmaS1taWdyYXRpb24KICAgICAg4pSc4pSA4pSAIDAxX2xlZHMKICAgICAg4pSc4pSA4pSA
IDAyX2RlZmF1bHRfc2V0X3N0YXRlCiAgICAgIOKUnOKUgOKUgCAwMl9uZXR3b3JrCiAgICAgIOKU
nOKUgOKUgCAwMl9zeXNpbmZvCiAgICAgIOKUnOKUgOKUgCAwYjI2ZjM2YWUwZjQxMDZkCiAgPHNu
aXA+CiAgICAgIOKUnOKUgOKUgCA1NDBCMjgueHoKICAgICAg4pSc4pSA4pSAIDVEM0I4NC5jcGlv
CiAgPHNuaXA+CiAgICAgIOKUnOKUgOKUgCBjcGlvLXJvb3QKICAgICAg4pSCICAg4pSc4pSA4pSA
IGJpbgogICAgICDilIIgICDilIIgICDilJzilIDilIAgYXNoIC0+IGJ1c3lib3gKICAgICAg4pSC
ICAg4pSCICAg4pSc4pSA4pSAIGJvYXJkX2RldGVjdAoKClF1ZXN0aW9uIDIgLSBhcmUgdGhlc2Ug
ZGlmZmVyZW5jZXMgaW4gaG93IHRoZSBpbWFnZSBpcyBiZWluZyBwYWNrZWQKY2F1c2luZyBwcm9i
bGVtcz8KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
