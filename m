Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F101F059B
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 09:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cLY2FonqGa3hz0uf+vfwpBBmtiUyHJdxql+k7Ym5N0=; b=JdLJfAkxmACgiw
	w+pDvMBlVrV5HyxisPEwCp+D7nrsflQZBo+QQTd0nWpvWo/BKOXMIe7wXy0FVy84FzugNYThVMqKe
	9M/5tBtVwDwZAq0/SqF1ZNN1vQ/yHGL5y2WH71Dvod/64+EHPj8wB1K5TtyMb549C4vNAzCCN79Wd
	kBxX8zkqll+XbiX5KG4u9XVFLxO515TIHffdPEmaeSVESAjLTtUnCh5yrdE3PluM+P/KyKvl6m6fp
	sVt9ZJRdp67IMtMBzSpMof7TrYucpgR+yUqIuZ4wyjT9IByLRpWdraH5pWGuDtqpd4tyLFT6Jv5Se
	SYsVlV0eTR0nrb3JdrIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhTQm-0002Fk-2O; Sat, 06 Jun 2020 07:39:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhTQd-0002FG-GP
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 07:39:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id s23so4731203pfh.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 00:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Qh5qD7PajpiaoqJmXLhZgfRUwIpyHlMvEqXZKkxToeM=;
 b=XWIMTUgFTa4sDhFxnHBF32JmyaMdSgz1Y6onarFoplSXNLXOyO280U2zKvo0t8iXrG
 YD0A7a6/dhIIcjjItzxDwjqYJSQzjnyxkKgGr+CKCkPBic4UYWlEvRKhUqtPB3l22mW5
 ZX2zq07qArFsj2Fh9GO64VAax+VZ1PvP9xDuTdJRM0w4WFJ5WX6UV2zHvNiodo8xqTwb
 krOBjPU5066H0I2vY8JCU0kDI9GBCc+eaMluYKaKzS3qBc8n4XK7l8tD2f/LrFr70nuh
 yOzU7UclQbFMWUM+dJ9tZIz3DUxIWSHyqnT+xMzB9rtDtF1aDpLcE1RQ15tSLKb4jei7
 Nx9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Qh5qD7PajpiaoqJmXLhZgfRUwIpyHlMvEqXZKkxToeM=;
 b=WcUyv/IDD+7WUJfvstL2kpuUP6ZeOea44m3D7mxwGccyqbk4yysYJyzHVEv1LrhWlq
 sjrK/h5XOSkOfxdmslNzdJ3Httnn2jB4fm4ntzWzEsesuqVSqqiH4TJkmONHH3x1pmDw
 rRS2EFwD/abYlhHZmOd8HUZhLMLjp7IRm4ch5Rvx1XNqftB5nuVdHa9+NgPV7wdJfZus
 a9xMzNPdaKiTDeF8eszuB/WQAfZIdJkfl/JoUMVjFYN8Q2cAzfoEIKqasrgfALwjx0ev
 GYqF6T1M8XPc8IOfBB47eSjMDAgOY5Q8Zgo/+H8X+sZlhvfZGwBEPQEJ0TWw+zvXUErJ
 Qw8Q==
X-Gm-Message-State: AOAM5311HUlojRoqRZ/v8BzGCMIO3/75k9M2n/WYn29/SigoxlXY4g/+
 Ur2OfByiwLXJVUkmNj+PPrI=
X-Google-Smtp-Source: ABdhPJzdHggpvaccNrbuSnGLLO9epWG0xfYMRtnrdwBbKn6q3Yn7932x0ANcCune3O4w050haORfWg==
X-Received: by 2002:a63:4407:: with SMTP id r7mr13234675pga.274.1591429181529; 
 Sat, 06 Jun 2020 00:39:41 -0700 (PDT)
Received: from [192.168.0.147] (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id z85sm1305192pfc.66.2020.06.06.00.39.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Jun 2020 00:39:40 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 6 Jun 2020 00:39:37 -0700
Message-Id: <0D9B78B5-B9F2-4843-91C9-65697B055186@gmail.com>
References: <KU1PR01MB2022EE2CC6B85C0499DD382CAD860@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <KU1PR01MB2022EE2CC6B85C0499DD382CAD860@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
To: Ian Cooper <iancooper@hotmail.com>
X-Mailer: iPhone Mail (17F75)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_003943_564024_CBA6808A 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] toolchain: remove gcc libssp and use
 libc variant
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IExlIDUganVpbiAyMDIwIMOgIDQ6NDIgUE0sIElhbiBDb29wZXIgPGlhbmNvb3BlckBob3Rt
YWlsLmNvbT4gYSDDqWNyaXQgOgo+IAo+IO+7v1JlbW92ZXMgdGhlIHN0YW5kYWxvbmUgaW1wbGVt
ZW50YXRpb24gb2Ygc3RhY2sgc21hc2hpbmcgcHJvdGVjdGlvbgo+IGluIGdjYydzIGxpYnNzcCBp
biBmYXZvdXIgb2YgdGhlIG5hdGl2ZSBpbXBsZW1lbnRhdGlvbiBpbiBtdXNsLAo+IGdsaWJjIGFu
ZCB1Q2xpYmMgYW5kIGludHJvZHVjZXMgYSB1bmlmb3JtIGNvbmZpZ3VyYXRpb24gaW50ZXJmYWNl
Lgo+IAo+IFRoaXMgYWxzbyBtYWtlcyBrZXJuZWwtbGV2ZWwgc3RhY2sgc21hc2hpbmcgcHJvdGVj
dGlvbiBhdmFpbGFibGUKPiBmb3IgYnVpbGRzIHVzaW5nIG5vbi1tdXNsIGxpYmMgKHN1YmplY3Qg
dG8gYXJjaGl0ZWN0dXJlIHN1cHBvcnQpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IElhbiBDb29wZXIg
PGlhbmNvb3BlckBob3RtYWlsLmNvbT4KQWNrZWQtYnk6IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21h
aWwuY29tPgo+IC0tLQo+IAo+IFVwZGF0ZSBmaXhlcyBhbiBhcnRlZmFjdCB3aXRoIG1lbnVjb25m
aWcgd2hpY2ggY2F1c2VkIGEgdG9vbGNoYWluCj4gbWVudSBvcHRpb24gdG8gbW92ZSB0byB0aGUg
ZnJvbnQgcGFnZSBvZiBtZW51Y29uZmlnIGR1ZSB0byB0aGUKPiByZW1vdmFsIG9mIGEgcHJvbXB0
IGFzc29jaWF0ZWQgd2l0aCBhIGRpZmZlcmVudCBDT05GSUdfIHZhcmlhYmxlLgo+IAo+IE5PVEU6
IGFmdGVyIGFwcGx5aW5nIHRoaXMgcGF0Y2ggeW91IG11c3QgZG8gYSBtYWtlIGRpcmNsZWFuIGFz
IHRoZQo+IGVudGlyZSB0b29sY2hhaW4gYW5kIGFsbCBwYWNrYWdlcyB3aWxsIG5lZWQgdG8gYmUg
cmVidWlsdC4KPiAKPiBUaGlzIHBhdGNoIGRvZXMgbm90IGNoYW5nZSB0aGUgYmVoYXZpb3VyIG90
IHRoZSBtdXNsIHRvb2xjaGFpbi4KPiBUaGVyZSBhcmUgbm8gY2hhbmdlcyB0byB0aGUgdWNsaWJj
IHRvb2xjaGFpbiBzaW5jZSBpdCdzIGFscmVhZHkKPiBiZWluZyBjb21waWxlZCB3aXRoIGl0J3Mg
bmF0aXZlIHNzcCBpbXBsZW1lbnRhdGlvbiBlbmFibGVkLgo+IAo+IGNvbmZpZy9Db25maWctYnVp
bGQuaW4gICAgfCA0IC0tLS0KPiB0b29sY2hhaW4vQ29uZmlnLmluICAgICAgIHwgNiArKysrKy0K
PiB0b29sY2hhaW4vZ2NjL0NvbmZpZy5pbiAgIHwgOCAtLS0tLS0tLQo+IHRvb2xjaGFpbi9nbGli
Yy9jb21tb24ubWsgfCAzICsrLQo+IDQgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAx
NCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvY29uZmlnL0NvbmZpZy1idWlsZC5pbiBi
L2NvbmZpZy9Db25maWctYnVpbGQuaW4KPiBpbmRleCA2MWE5MjY1YWQ3Li5hYzFlMDVkMmZmIDEw
MDY0NAo+IC0tLSBhL2NvbmZpZy9Db25maWctYnVpbGQuaW4KPiArKysgYi9jb25maWcvQ29uZmln
LWJ1aWxkLmluCj4gQEAgLTI0OSw3ICsyNDksNiBAQCBtZW51ICJHbG9iYWwgYnVpbGQgc2V0dGlu
Z3MiCj4gCj4gICAgY2hvaWNlCj4gICAgICAgIHByb21wdCAiVXNlciBzcGFjZSBTdGFjay1TbWFz
aGluZyBQcm90ZWN0aW9uIgo+IC0gICAgICAgIGRlcGVuZHMgb24gVVNFX01VU0wKPiAgICAgICAg
ZGVmYXVsdCBQS0dfQ0NfU1RBQ0tQUk9URUNUT1JfUkVHVUxBUgo+ICAgICAgICBoZWxwCj4gICAg
ICAgICAgRW5hYmxlIEdDQyBTdGFjayBTbWFzaGluZyBQcm90ZWN0aW9uIChTU1ApIGZvciB1c2Vy
c3BhY2UgYXBwbGljYXRpb25zCj4gQEAgLTI1NywxOCArMjU2LDE1IEBAIG1lbnUgIkdsb2JhbCBi
dWlsZCBzZXR0aW5ncyIKPiAgICAgICAgICAgIGJvb2wgIk5vbmUiCj4gICAgICAgIGNvbmZpZyBQ
S0dfQ0NfU1RBQ0tQUk9URUNUT1JfUkVHVUxBUgo+ICAgICAgICAgICAgYm9vbCAiUmVndWxhciIK
PiAtICAgICAgICAgICAgc2VsZWN0IEdDQ19MSUJTU1AgaWYgIVVTRV9NVVNMCj4gICAgICAgICAg
ICBkZXBlbmRzIG9uIEtFUk5FTF9DQ19TVEFDS1BST1RFQ1RPUl9SRUdVTEFSCj4gICAgICAgIGNv
bmZpZyBQS0dfQ0NfU1RBQ0tQUk9URUNUT1JfU1RST05HCj4gICAgICAgICAgICBib29sICJTdHJv
bmciCj4gLSAgICAgICAgICAgIHNlbGVjdCBHQ0NfTElCU1NQIGlmICFVU0VfTVVTTAo+ICAgICAg
ICAgICAgZGVwZW5kcyBvbiBLRVJORUxfQ0NfU1RBQ0tQUk9URUNUT1JfU1RST05HCj4gICAgZW5k
Y2hvaWNlCj4gCj4gICAgY2hvaWNlCj4gICAgICAgIHByb21wdCAiS2VybmVsIHNwYWNlIFN0YWNr
LVNtYXNoaW5nIFByb3RlY3Rpb24iCj4gICAgICAgIGRlZmF1bHQgS0VSTkVMX0NDX1NUQUNLUFJP
VEVDVE9SX1JFR1VMQVIKPiAtICAgICAgICBkZXBlbmRzIG9uIFVTRV9NVVNMIHx8ICEoeDg2XzY0
IHx8IGkzODYpCj4gICAgICAgIGhlbHAKPiAgICAgICAgICBFbmFibGUgR0NDIFN0YWNrLVNtYXNo
aW5nIFByb3RlY3Rpb24gKFNTUCkgZm9yIHRoZSBrZXJuZWwKPiAgICAgICAgY29uZmlnIEtFUk5F
TF9DQ19TVEFDS1BST1RFQ1RPUl9OT05FCj4gZGlmZiAtLWdpdCBhL3Rvb2xjaGFpbi9Db25maWcu
aW4gYi90b29sY2hhaW4vQ29uZmlnLmluCj4gaW5kZXggNzYyZjRlMTBkNy4uZTJhZjFjMmM4ZSAx
MDA2NDQKPiAtLS0gYS90b29sY2hhaW4vQ29uZmlnLmluCj4gKysrIGIvdG9vbGNoYWluL0NvbmZp
Zy5pbgo+IEBAIC0yODMsOCArMjgzLDEyIEBAIGNvbmZpZyBVU0VfTVVTTAo+ICAgIGRlZmF1bHQg
eSBpZiAhVE9PTENIQUlOT1BUUyAmJiAhRVhURVJOQUxfVE9PTENIQUlOICYmICFOQVRJVkVfVE9P
TENIQUlOICYmICEoYXJjKQo+ICAgIGJvb2wKPiAKPiArY29uZmlnIEdDQ19MSUJTU1AKPiArICAg
ICAgICBkZWZhdWx0IG4KPiArICAgICAgICBib29sCj4gKwo+IGNvbmZpZyBTU1BfU1VQUE9SVAo+
IC0gICAgZGVmYXVsdCB5IGlmIFVTRV9NVVNMIHx8IEdDQ19MSUJTU1AKPiArICAgIGRlZmF1bHQg
eSBpZiAhUEtHX0NDX1NUQUNLUFJPVEVDVE9SX05PTkUKPiAgICBib29sCj4gCj4gY29uZmlnIFVT
RV9FWFRFUk5BTF9MSUJDCj4gZGlmZiAtLWdpdCBhL3Rvb2xjaGFpbi9nY2MvQ29uZmlnLmluIGIv
dG9vbGNoYWluL2djYy9Db25maWcuaW4KPiBpbmRleCA3ZDdmMzQyMTBhLi40YjJiYTdhYWFlIDEw
MDY0NAo+IC0tLSBhL3Rvb2xjaGFpbi9nY2MvQ29uZmlnLmluCj4gKysrIGIvdG9vbGNoYWluL2dj
Yy9Db25maWcuaW4KPiBAQCAtNDcsMTQgKzQ3LDYgQEAgY29uZmlnIEdDQ19ERUZBVUxUX1NTUAo+
ICAgIGhlbHAKPiAgICAgICAgVXNlIGdjYyBjb25maWd1cmUgb3B0aW9uIC0tZW5hYmxlLWRlZmF1
bHQtc3NwIHRvIHR1cm4gb24gLWZzdGFjay1wcm90ZWN0b3Itc3Ryb25nIGJ5IGRlZmF1bHQuCj4g
Cj4gLWNvbmZpZyBHQ0NfTElCU1NQCj4gLSAgICBib29sCj4gLSAgICBwcm9tcHQgIkJ1aWxkIGdj
YyBsaWJzc3AiIGlmIFRPT0xDSEFJTk9QVFMKPiAtICAgIGRlcGVuZHMgb24gIVVTRV9NVVNMCj4g
LSAgICBkZWZhdWx0IHkgaWYgIVVTRV9NVVNMCj4gLSAgICBoZWxwCj4gLSAgICAgICAgRW5hYmxl
IFN0YWNrLVNtYXNoaW5nIFByb3RlY3Rpb24gc3VwcG9ydAo+IC0KPiBjb25maWcgU0pMSl9FWENF
UFRJT05TCj4gICAgYm9vbAo+ICAgIHByb21wdCAiVXNlIHNldGp1bXAoKS9sb25nanVtcCgpIGV4
Y2VwdGlvbnMiIGlmIFRPT0xDSEFJTk9QVFMKPiBkaWZmIC0tZ2l0IGEvdG9vbGNoYWluL2dsaWJj
L2NvbW1vbi5tayBiL3Rvb2xjaGFpbi9nbGliYy9jb21tb24ubWsKPiBpbmRleCBkYjRmMGZjYzBl
Li5mMGI5NWQzY2M3IDEwMDY0NAo+IC0tLSBhL3Rvb2xjaGFpbi9nbGliYy9jb21tb24ubWsKPiAr
KysgYi90b29sY2hhaW4vZ2xpYmMvY29tbW9uLm1rCj4gQEAgLTM5LDcgKzM5LDYgQEAgaWZlcSAo
JChBUkNIKSxtaXBzNjQpCj4gICBlbmRpZgo+IGVuZGlmCj4gCj4gLQo+ICMgLU9zIG1pc2NvbXBp
bGVzIHcuIDIuMjQgZ2NjNS9nY2M2Cj4gIyBvbmx5IC1PMiB0ZXN0ZWQgYnkgdXBzdHJlYW0gY2hh
bmdlc2V0Cj4gIyAiT3B0aW1pemUgaTM4NiBzeXNjYWxsIGlubGluaW5nIGZvciBHQ0MgNSIKPiBA
QCAtNjEsNiArNjAsOCBAQCBHTElCQ19DT05GSUdVUkU6PSBcCj4gICAgICAgIC0td2l0aG91dC1j
dnMgXAo+ICAgICAgICAtLWVuYWJsZS1hZGQtb25zIFwKPiAgICAgICAgLS0kKGlmICQoQ09ORklH
X1NPRlRfRkxPQVQpLHdpdGhvdXQsd2l0aCktZnAgXAo+ICsgICAgICAgICAgJChpZiAkKENPTkZJ
R19QS0dfQ0NfU1RBQ0tQUk9URUNUT1JfUkVHVUxBUiksLS1lbmFibGUtc3RhY2stcHJvdGVjdG9y
PXllcykgXAo+ICsgICAgICAgICAgJChpZiAkKENPTkZJR19QS0dfQ0NfU1RBQ0tQUk9URUNUT1Jf
U1RST05HKSwtLWVuYWJsZS1zdGFjay1wcm90ZWN0b3I9c3Ryb25nKSBcCj4gICAgICAgIC0tZW5h
YmxlLWtlcm5lbD00LjE0LjAKPiAKPiBleHBvcnQgbGliY19jdl9zc3A9bm8KPiAtLSAKPiAyLjI1
LjEKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
