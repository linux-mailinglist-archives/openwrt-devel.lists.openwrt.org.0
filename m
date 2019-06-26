Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DEC55DF6
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 03:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3YjkfTaO07t8aUKNZhMjBHCU41peZQyOI/cNFzPaww=; b=OJcMTDgPFAgpWW
	lGau7o+pez8LNzEm+hl4+BGouwv6182dTq5Fxz1I8mhcxs5E2yDV0pZiIpgVEGLqorG/dtEccR4RT
	LotCPUuugZEeXNM9vvyKW8fXP4RLRltXDmyTVWtEWEDb+xwGoEG4+SSyVRWUIAILRpxEpx4L++2ku
	FwcVpy/aAdDNv1BlboPLYcogqhakCn0Wv3akXL4V5Zsl6Rs7hVqVKJGPyAwjQd6kN+YJW97YzcJFz
	tf4M4DITprVnIBkKsLItMqxDRMt4FZJMVcdX2XusLesqJ+zo8ySiQ0KrVFpFwq8ivXfHcvkJBW6O/
	mGZ24WFPjVxm86ifqrkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfx5S-00056o-Tj; Wed, 26 Jun 2019 01:51:02 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfx4p-0004uA-Bf
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 01:50:27 +0000
Received: by mail-qk1-x730.google.com with SMTP id d15so371828qkl.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 18:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WWbdPA8ylaAwnw4qnoetmv+bte2eFFOj8EL/qC/iCho=;
 b=UR+x8T2mlbyN4e0R2JckMG+4vhRdzp3FxboAN56m1afFX0IxjU9oqcZABUCUinXItC
 uCuWp4pRsPm+gDlW4ANoCBXG5MX7PVM4XbO/IL5cYHSrfrD58GqZazo+gvkjuxAtVYb4
 tzS3f+dqXPFLSdHlqPVT0TUwPLcpPKOrZ6JupdPX2Fvenswk6DjxVAtFVeCwNYQS6ptH
 k1/WHysBTFiZxof9cr9sbeO6/Bpdgl5XBh1/8iU3sCNRwHya6ARrYgcqryM2MovA2CTh
 vDjYvUdqKTLbuhJA8NOMqPKanicMODgNsdz1M/BtkjTg6fbVjk0OJfBG58PO6qA3+o3p
 7CBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WWbdPA8ylaAwnw4qnoetmv+bte2eFFOj8EL/qC/iCho=;
 b=iocoMwmmNQNoqmaFVBHF8zfhAR9kmKbLuOUbIDJYZXANsIPvEjaT5jkTUCSLvXecTV
 RNi7A3y15YOz/FJoN345XgIh4CJwULXJgiGEkBiJnDxznRPNCeR60H/NpcwtmxNK1BOD
 CmwzgLArfA3kCP6q35qcjj3bB0H0v6X2URjNKd6CojzMXDsqU8917H1nVWQUitWDkd0R
 0aIo/y6BC/p5XoSZij9F+lljZqH/ITQ2dRGuqH98Q5ARXdYdrImenpjSkQ4kuSgmUQB+
 yW7t5tKt1LFvMEf2vHMkkhPc/WLkkim86LpSGJyNW/cvXf68wP9uJk1poIIUdSgsmgjS
 L40g==
X-Gm-Message-State: APjAAAVHD3gR6HIPpLQm9hhpnbeMibdkcAUUE5Qm21NpP97IbofY0Ka6
 h2M3Ra803IWNcgTRhf7DxTyuco95v7E=
X-Google-Smtp-Source: APXvYqzokrHHy2417lliq/IKZyVnVUyBsWJMRKwmYMJ3hM6vythMC2FWN+6GAkiFVgN80B/93Jhpuw==
X-Received: by 2002:a05:620a:12a2:: with SMTP id
 x2mr1566729qki.133.1561513822055; 
 Tue, 25 Jun 2019 18:50:22 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id a54sm6523437qtk.85.2019.06.25.18.50.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 18:50:21 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Jun 2019 22:49:45 -0300
Message-Id: <20190626014947.19818-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626014947.19818-1-cotequeiroz@gmail.com>
References: <20190626014947.19818-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_185023_396550_56ECC866 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:730 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/3] wolfssl: update to 3.15.7, fix Makefile
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBpbmNsdWRlcyBhIGZpeCBmb3IgYSBtZWRpdW0tbGV2ZWwgcG90ZW50aWFsIGNhY2hlIGF0
dGFjayB3aXRoIGEKdmFyaWFudCBvZiBCbGVpY2hlbmJhY2hlcuKAmXMgYXR0YWNrLiAgUGF0Y2hl
cyB3ZXJlIHJlZnJlc2hlZC4KRml4ZWQgcG9seTEzMDUgYnVpbGQgb3B0aW9uLCBhbmQgbWFkZSBz
b21lIE1ha2VmaWxlIHVwZGF0ZXMuCgpTaWduZWQtb2ZmLWJ5OiBFbmVhcyBVIGRlIFF1ZWlyb3og
PGNvdGVxdWVpcm96QGdtYWlsLmNvbT4KCmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvd29sZnNz
bC9Db25maWcuaW4gYi9wYWNrYWdlL2xpYnMvd29sZnNzbC9Db25maWcuaW4KaW5kZXggNTBiMGJi
OWNkZi4uNGFhMTYzYjM2MSAxMDA2NDQKLS0tIGEvcGFja2FnZS9saWJzL3dvbGZzc2wvQ29uZmln
LmluCisrKyBiL3BhY2thZ2UvbGlicy93b2xmc3NsL0NvbmZpZy5pbgpAQCAtNTMsNyArNTMsNyBA
QCBjb25maWcgV09MRlNTTF9IQVNfRUNDMjU1MTkKIAlkZXBlbmRzIG9uIFdPTEZTU0xfSEFTX0VD
QwogCWRlZmF1bHQgbgogCi1jb25maWcgV09MRlNTTF9IQVNfUE9MWV8xMzA1Citjb25maWcgV09M
RlNTTF9IQVNfUE9MWTEzMDUKIAlib29sICJJbmNsdWRlIFBvbHktMTMwNSBzdXBwb3J0IgogCWRl
ZmF1bHQgbgogCmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvd29sZnNzbC9NYWtlZmlsZSBiL3Bh
Y2thZ2UvbGlicy93b2xmc3NsL01ha2VmaWxlCmluZGV4IDIzYmIxYzUyMjAuLmQ5NmRiZWEzMjMg
MTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbGlicy93b2xmc3NsL01ha2VmaWxlCisrKyBiL3BhY2thZ2Uv
bGlicy93b2xmc3NsL01ha2VmaWxlCkBAIC04LDExICs4LDEwIEBACiBpbmNsdWRlICQoVE9QRElS
KS9ydWxlcy5tawogCiBQS0dfTkFNRTo9d29sZnNzbAotUEtHX1ZFUlNJT046PTMuMTUuMy1zdGFi
bGUKLVBLR19SRUxFQVNFOj0yCitQS0dfVkVSU0lPTjo9My4xNS43LXN0YWJsZQorUEtHX1JFTEVB
U0U6PTEKIAotUEtHX1NPVVJDRTo9JChQS0dfTkFNRSktJChQS0dfVkVSU0lPTikuemlwCi0jIFBL
R19TT1VSQ0VfVVJMOj1odHRwczovL3d3dy53b2xmc3NsLmNvbS8KK1BLR19TT1VSQ0U6PSQoUEtH
X05BTUUpLSQoUEtHX1ZFUlNJT04pLnRhci5negogUEtHX1NPVVJDRV9VUkw6PWh0dHBzOi8vZ2l0
aHViLmNvbS93b2xmU1NML3dvbGZzc2wvYXJjaGl2ZS92JChQS0dfVkVSU0lPTikKIFBLR19IQVNI
Oj1kYzk3YzA3YTc2NjdiMzlhODkwZTE0ZjRiNGEyMDlmNTE1MjRhNGNhYmVlN2FkYjZjODA4MjJl
ZTc4YzFmNjJhCiAKQEAgLTIwLDE1ICsxOSwxNiBAQCBQS0dfRklYVVA6PWxpYnRvb2wKIFBLR19J
TlNUQUxMOj0xCiBQS0dfVVNFX01JUFMxNjo9MAogUEtHX0JVSUxEX1BBUkFMTEVMOj0xCi1QS0df
TElDRU5TRTo9R1BMLTIuMCsKLVBLR19DUEVfSUQ6PWNwZTovYTp5YXNzbDpjeWFzc2wKK1BLR19M
SUNFTlNFOj1HUEwtMi4wLW9yLWxhdGVyCitQS0dfTElDRU5TRV9GSUxFUzo9TElDRU5TSU5HIENP
UFlJTkcKK1BLR19DUEVfSUQ6PWNwZTovYTp3b2xmc3NsOndvbGZzc2wKIAogUEtHX0NPTkZJR19E
RVBFTkRTOj1cCiAJQ09ORklHX1dPTEZTU0xfSEFTX0FFU19DQ00gQ09ORklHX1dPTEZTU0xfSEFT
X0FFU19HQ00gXAogCUNPTkZJR19XT0xGU1NMX0hBU19BUkM0IENPTkZJR19XT0xGU1NMX0hBU19D
SEFDSEEgXAogCUNPTkZJR19XT0xGU1NMX0hBU19ERVMzIENPTkZJR19XT0xGU1NMX0hBU19ESCBD
T05GSUdfV09MRlNTTF9IQVNfRFRMUyBcCiAJQ09ORklHX1dPTEZTU0xfSEFTX0VDQyBDT05GSUdf
V09MRlNTTF9IQVNfRUNDMjU1MTkgXAotCUNPTkZJR19XT0xGU1NMX0hBU19PQ1NQIENPTkZJR19X
T0xGU1NMX0hBU19QT0xZXzEzMDUgXAorCUNPTkZJR19XT0xGU1NMX0hBU19PQ1NQIENPTkZJR19X
T0xGU1NMX0hBU19QT0xZMTMwNSBcCiAJQ09ORklHX1dPTEZTU0xfSEFTX1BTSyBDT05GSUdfV09M
RlNTTF9IQVNfU0VTU0lPTl9USUNLRVQgXAogCUNPTkZJR19XT0xGU1NMX0hBU19XUEFTCiAKQEAg
LTQyLDcgKzQyLDcgQEAgZGVmaW5lIFBhY2thZ2UvbGlid29sZnNzbAogICBVUkw6PWh0dHA6Ly93
d3cud29sZnNzbC5jb20vCiAgIE1FTlU6PTEKICAgUFJPVklERVM6PWxpYmN5YXNzbAotICBBQklf
VkVSU0lPTjo9MTgKKyAgQUJJX1ZFUlNJT046PTE5CiBlbmRlZgogCiBkZWZpbmUgUGFja2FnZS9s
aWJ3b2xmc3NsL2Rlc2NyaXB0aW9uCmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvd29sZnNzbC9w
YXRjaGVzLzEwMC1kaXNhYmxlLWhhcmRlbmluZy1jaGVjay5wYXRjaCBiL3BhY2thZ2UvbGlicy93
b2xmc3NsL3BhdGNoZXMvMTAwLWRpc2FibGUtaGFyZGVuaW5nLWNoZWNrLnBhdGNoCmluZGV4IGQ5
MTNiNWZkZWEuLjhhNTE0MzQ2MzMgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbGlicy93b2xmc3NsL3Bh
dGNoZXMvMTAwLWRpc2FibGUtaGFyZGVuaW5nLWNoZWNrLnBhdGNoCisrKyBiL3BhY2thZ2UvbGli
cy93b2xmc3NsL3BhdGNoZXMvMTAwLWRpc2FibGUtaGFyZGVuaW5nLWNoZWNrLnBhdGNoCkBAIC0x
LDYgKzEsNiBAQAogLS0tIGEvd29sZnNzbC93b2xmY3J5cHQvc2V0dGluZ3MuaAogKysrIGIvd29s
ZnNzbC93b2xmY3J5cHQvc2V0dGluZ3MuaAotQEAgLTE2MjQsNyArMTYyNCw3IEBAIGV4dGVybiB2
b2lkIHVJVFJPTjRfZnJlZSh2b2lkICpwKSA7CitAQCAtMTc1OSw3ICsxNzU5LDcgQEAgZXh0ZXJu
IHZvaWQgdUlUUk9ONF9mcmVlKHZvaWQgKnApIDsKICAjZW5kaWYKICAKICAvKiB3YXJuaW5nIGZv
ciBub3QgdXNpbmcgaGFyZGVuIGJ1aWxkIG9wdGlvbnMgKGRlZmF1bHQgd2l0aCAuL2NvbmZpZ3Vy
ZSkgKi8KQEAgLTgsNCArOCw0IEBACiArI2lmIDAKICAgICAgI2lmIChkZWZpbmVkKFVTRV9GQVNU
X01BVEgpICYmICFkZWZpbmVkKFRGTV9USU1JTkdfUkVTSVNUQU5UKSkgfHwgXAogICAgICAgICAg
KGRlZmluZWQoSEFWRV9FQ0MpICYmICFkZWZpbmVkKEVDQ19USU1JTkdfUkVTSVNUQU5UKSkgfHwg
XAotICAgICAgICAgKCFkZWZpbmVkKE5PX1JTQSkgJiYgIWRlZmluZWQoV0NfUlNBX0JMSU5ESU5H
KSAmJiAhZGVmaW5lZChIQVZFX0ZJUFMpKQorICAgICAgICAgKCFkZWZpbmVkKE5PX1JTQSkgJiYg
IWRlZmluZWQoV0NfUlNBX0JMSU5ESU5HKSAmJiAhZGVmaW5lZChIQVZFX0ZJUFMpICYmIFwKZGlm
ZiAtLWdpdCBhL3BhY2thZ2UvbGlicy93b2xmc3NsL3BhdGNoZXMvOTAwLXJlbW92ZS1icm9rZW4t
YXV0b2NvbmYtbWFjcm9zLnBhdGNoIGIvcGFja2FnZS9saWJzL3dvbGZzc2wvcGF0Y2hlcy85MDAt
cmVtb3ZlLWJyb2tlbi1hdXRvY29uZi1tYWNyb3MucGF0Y2gKaW5kZXggNjY1ODJjZmM0Ni4uNmIw
ODYxMjg4ZiAxMDA2NDQKLS0tIGEvcGFja2FnZS9saWJzL3dvbGZzc2wvcGF0Y2hlcy85MDAtcmVt
b3ZlLWJyb2tlbi1hdXRvY29uZi1tYWNyb3MucGF0Y2gKKysrIGIvcGFja2FnZS9saWJzL3dvbGZz
c2wvcGF0Y2hlcy85MDAtcmVtb3ZlLWJyb2tlbi1hdXRvY29uZi1tYWNyb3MucGF0Y2gKQEAgLTEs
NiArMSw2IEBACiAtLS0gYS9jb25maWd1cmUuYWMKICsrKyBiL2NvbmZpZ3VyZS5hYwotQEAgLTQx
OTgsNyArNDE5OCw2IEBAIEFDX0NPTkZJR19GSUxFUyhbc3RhbXAtaF0sIFtlY2hvIHRpbWVzdGEK
K0BAIC00NjE0LDcgKzQ2MTQsNiBAQCBBQ19DT05GSUdfRklMRVMoW3N0YW1wLWhdLCBbZWNobyB0
aW1lc3RhCiAgQUNfQ09ORklHX0ZJTEVTKFtNYWtlZmlsZSB3b2xmc3NsL3ZlcnNpb24uaCB3b2xm
c3NsL29wdGlvbnMuaCBjeWFzc2wvb3B0aW9ucy5oIHN1cHBvcnQvd29sZnNzbC5wYyBycG0vc3Bl
Y10pCiAgCiAgQVhfQ1JFQVRFX0dFTkVSSUNfQ09ORklHCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
