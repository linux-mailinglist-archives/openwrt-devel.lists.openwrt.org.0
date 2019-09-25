Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6886BE08F
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 16:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TzN6/WZcIklEArVnBHLGKPTSiBBIuUXKECsnLf0biM=; b=BTVfGS7L6BJX6/
	AjKwweyi5K8hkII9rN0PsPQJ3PQtro1C07xWOQ9Icllc21Kdr7EanAXAYfCOJO4uFC3Xe4Np2Q8m2
	hC8fbO2v8iDq+jI/O2JZ3PQXC2k9gk5oU2XwvxXFzSsX3rglGQ1JqPmrv1PQq+obt9HYA6GVpYpsL
	VYGjZIV/hvc+umdhrzlC+cF3oH+BRl5jF7SncL0GDwfcDQQN+Hv7X1AhX9m3oDE6lvB5zHb5jsuPO
	XQIuyGaGoOln3IhIMpaJbbOQ3Njy/Pai2gA9r/tLjrJOZHEeLZtlsC9UFVArTYlwDHuqsJ5nnRNFV
	exVSLPTPrtbHK5O838ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8eA-0000VU-OT; Wed, 25 Sep 2019 14:52:02 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8dz-0000Uc-PR
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 14:51:53 +0000
Received: by mail-lj1-x243.google.com with SMTP id m13so5954895ljj.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 07:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8pxfw2s81NZb2EamHCzMEi2mfdklX6FlGkr5fGd134U=;
 b=maUhlnHJq5oshaMBWgV4VmlwWdMLwYlwYO5RhQnt7ku0dgrnDtBmsKScsNmFGPvx6O
 lRGhUHw0vpPrXm0q3a8CQ/ohDdGuFxHGOETZ6+XIVXeI8ZhiAoUYtrrhOs7/8a37qP9A
 4zI7mteH5t6qIk1xYbIgOv0X2gUJmbXr35BB8vrIWv5SHmKlmpe75dOfxoUTdpvtjwH7
 Dejzun4KjKiOKIOGHKFESyDtFrBjU8+aKdHl0gUtPqfTu7vAukG2AfKnjM4vqMexKCrp
 hOQfeGWLRFAEB0MClPE8cB/LHGtco97YSbGGVqEuvS+rXgeOJnNQstUw951Fe5v6TBTQ
 T3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8pxfw2s81NZb2EamHCzMEi2mfdklX6FlGkr5fGd134U=;
 b=WCy4H2LJb8x5VdURxtO9ntGoN8q+ogpPwcnU86Rfrq6G/NoExblGklbbS8VfIhOdhX
 KJYFPLO5hS3SNioRdT+cUVwNDFOUxrDfSbgmeXBX1blhpJyFY8NDIic10wz52c18xrOJ
 3zDXwqKM1DnbffhWdLSIvPVBuy+TJTTGpuvaO2dDaUq5ETZUCc9c6wIBjYauEeEP0rXX
 /2XTReW1rQ6JIDKXvteXhd0EOtuJupl6CzgMGvqxRme8Ut10srNBYK06qUfTi2dcCRK5
 +A8Y+ax9xNxD4xeg6ctZhaaGbqHUm5rVF+nukv9mkiAqsYK7jJsoAwM5+146+u09Qek3
 4VCQ==
X-Gm-Message-State: APjAAAXppJgFpDcAeLQjjNve31QwVQ5YHOsLuhT9DCXxl1yl5pRb5gQX
 KQRCsJjPVYGtN/z5zoTalUEe42TT
X-Google-Smtp-Source: APXvYqwL+zJkXu9PA6ixLZRjIaP13e0XtKNA9eAT+DGWQC8FCLDkzAUesvqjMcAZwEo/DT6ReyEuvA==
X-Received: by 2002:a2e:1409:: with SMTP id u9mr7008717ljd.162.1569423107338; 
 Wed, 25 Sep 2019 07:51:47 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 21sm1258745ljq.15.2019.09.25.07.51.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 07:51:46 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	Jo-Philipp Wich <jo@mein.io>
Date: Wed, 25 Sep 2019 16:51:37 +0200
Message-Id: <20190925145138.6185-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_075151_853360_CDFD090E 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH luci 1/2] luci-mod-system: use "system" new
 "validate_firmware_image" ubus method
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBuZXcgdWJ1cyBt
ZXRob2QgcHJvdmlkZXMgbW9yZSBwcm9wZXJseS1mb3JtYXR0ZWQgZGV0YWlscyBhYm91dApmaXJt
d2FyZSBmaWxlLiBVc2UgaXQgdG8gY2hlY2sgaWYgdXBsb2FkZWQgaW1hZ2UgaXMgdmFsaWQuCgpU
aGUgb2xkICJzeXN1cGdyYWRlIC0tdGVzdCIgbWV0aG9kIGlzIGxlZnQgZm9yIG5vdyB0byBwcm92
aWRlIHN0ZGVycgpvdXRwdXQuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFs
QG1pbGVja2kucGw+Ci0tLQogLi4uL3Jlc291cmNlcy92aWV3L3N5c3RlbS9mbGFzaC5qcyAgICAg
ICAgICAgIHwgMzAgKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIwIGluc2Vy
dGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21vZHVsZXMvbHVjaS1tb2Qt
c3lzdGVtL2h0ZG9jcy9sdWNpLXN0YXRpYy9yZXNvdXJjZXMvdmlldy9zeXN0ZW0vZmxhc2guanMg
Yi9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9odGRvY3MvbHVjaS1zdGF0aWMvcmVzb3VyY2VzL3Zp
ZXcvc3lzdGVtL2ZsYXNoLmpzCmluZGV4IDlhZDY0ZGFkNC4uNzg0ZWMxMzViIDEwMDY0NAotLS0g
YS9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9odGRvY3MvbHVjaS1zdGF0aWMvcmVzb3VyY2VzL3Zp
ZXcvc3lzdGVtL2ZsYXNoLmpzCisrKyBiL21vZHVsZXMvbHVjaS1tb2Qtc3lzdGVtL2h0ZG9jcy9s
dWNpLXN0YXRpYy9yZXNvdXJjZXMvdmlldy9zeXN0ZW0vZmxhc2guanMKQEAgLTIsNyArMiw3IEBA
CiAncmVxdWlyZSBmb3JtJzsKICdyZXF1aXJlIHJwYyc7CiAKLXZhciBjYWxsRmlsZVN0YXQsIGNh
bGxGaWxlUmVhZCwgY2FsbEZpbGVXcml0ZSwgY2FsbEZpbGVFeGVjLCBjYWxsRmlsZVJlbW92ZTsK
K3ZhciBjYWxsRmlsZVN0YXQsIGNhbGxGaWxlUmVhZCwgY2FsbEZpbGVXcml0ZSwgY2FsbEZpbGVF
eGVjLCBjYWxsRmlsZVJlbW92ZSwgY2FsbFN5c3RlbVZhbGlkYXRlRmlybXdhcmVJbWFnZTsKIAog
Y2FsbEZpbGVTdGF0ID0gcnBjLmRlY2xhcmUoewogCW9iamVjdDogJ2ZpbGUnLApAQCAtMzgsNiAr
MzgsMTIgQEAgY2FsbEZpbGVSZW1vdmUgPSBycGMuZGVjbGFyZSh7CiAJcGFyYW1zOiBbICdwYXRo
JyBdCiB9KTsKIAorY2FsbFN5c3RlbVZhbGlkYXRlRmlybXdhcmVJbWFnZSA9IHJwYy5kZWNsYXJl
KHsKKwlvYmplY3Q6ICdzeXN0ZW0nLAorCW1ldGhvZDogJ3ZhbGlkYXRlX2Zpcm13YXJlX2ltYWdl
JywKKwlwYXJhbXM6IFsgJ3BhdGgnIF0KK30pOworCiBmdW5jdGlvbiBwaW5nRGV2aWNlKHByb3Rv
LCBpcGFkZHIpIHsKIAl2YXIgdGFyZ2V0ID0gJyVzOi8vJXMlcz8lcycuZm9ybWF0KHByb3RvIHx8
ICdodHRwJywgaXBhZGRyIHx8IHdpbmRvdy5sb2NhdGlvbi5ob3N0LCBMLnJlc291cmNlKCdpY29u
cy9sb2FkaW5nLmdpZicpLCBNYXRoLnJhbmRvbSgpKTsKIApAQCAtMzQ1LDEzICszNTEsMTcgQEAg
cmV0dXJuIEwudmlldy5leHRlbmQoewogCQkJCQlFKCdzcGFuJywgeyAnY2xhc3MnOiAnc3Bpbm5p
bmcnIH0sIF8oJ1ZlcmlmeWluZyB0aGUgdXBsb2FkZWQgaW1hZ2UgZmlsZS4nKSkKIAkJCQldKTsK
IAorCQkJCXJldHVybiBjYWxsU3lzdGVtVmFsaWRhdGVGaXJtd2FyZUltYWdlKCcvdG1wL2Zpcm13
YXJlLmJpbicpCisJCQkJCS50aGVuKGZ1bmN0aW9uKHJlcykgeyByZXR1cm4gWyByZXBseSwgcmVz
IF07IH0pOworCQkJfSwgdGhpcywgZXYudGFyZ2V0KSkKKwkJCS50aGVuKEwuYmluZChmdW5jdGlv
bihidG4sIHJlcGx5KSB7CiAJCQkJcmV0dXJuIGNhbGxGaWxlRXhlYygnL3NiaW4vc3lzdXBncmFk
ZScsIFsgJy0tdGVzdCcsICcvdG1wL2Zpcm13YXJlLmJpbicgXSkKLQkJCQkJLnRoZW4oZnVuY3Rp
b24ocmVzKSB7IHJldHVybiBbIHJlcGx5LCByZXMgXSB9KTsKKwkJCQkJLnRoZW4oZnVuY3Rpb24o
cmVzKSB7IHJlcGx5LnB1c2gocmVzKTsgcmV0dXJuIHJlcGx5OyB9KTsKIAkJCX0sIHRoaXMsIGV2
LnRhcmdldCkpCiAJCQkudGhlbihMLmJpbmQoZnVuY3Rpb24oYnRuLCByZXMpIHsKIAkJCQl2YXIg
a2VlcCA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoJ1tkYXRhLW5hbWU9ImtlZXAiXSBpbnB1dFt0
eXBlPSJjaGVja2JveCJdJyksCiAJCQkJICAgIGZvcmNlID0gRSgnaW5wdXQnLCB7IHR5cGU6ICdj
aGVja2JveCcgfSksCi0JCQkJICAgIGlzX2ludmFsaWQgPSAocmVzWzFdLmNvZGUgIT0gMCksCisJ
CQkJICAgIGlzX3ZhbGlkID0gcmVzWzFdLnZhbGlkLAogCQkJCSAgICBpc190b29fYmlnID0gKHN0
b3JhZ2Vfc2l6ZSA+IDAgJiYgcmVzWzBdLnNpemUgPiBzdG9yYWdlX3NpemUpLAogCQkJCSAgICBi
b2R5ID0gW107CiAKQEAgLTM2Myw3ICszNzMsNyBAQCByZXR1cm4gTC52aWV3LmV4dGVuZCh7CiAJ
CQkJCUUoJ2xpJywge30sIGtlZXAuY2hlY2tlZCA/IF8oJ0NvbmZpZ3VyYXRpb24gZmlsZXMgd2ls
bCBiZSBrZXB0JykgOiBfKCdDYXV0aW9uOiBDb25maWd1cmF0aW9uIGZpbGVzIHdpbGwgYmUgZXJh
c2VkJykpCiAJCQkJXSkpOwogCi0JCQkJaWYgKGlzX2ludmFsaWQgfHwgaXNfdG9vX2JpZykKKwkJ
CQlpZiAoIWlzX3ZhbGlkIHx8IGlzX3Rvb19iaWcpCiAJCQkJCWJvZHkucHVzaChFKCdocicpKTsK
IAogCQkJCWlmIChpc190b29fYmlnKQpAQCAtMzcxLDE1ICszODEsMTUgQEAgcmV0dXJuIEwudmll
dy5leHRlbmQoewogCQkJCQkJXygnSXQgYXBwZWFycyB0aGF0IHlvdSBhcmUgdHJ5aW5nIHRvIGZs
YXNoIGFuIGltYWdlIHRoYXQgZG9lcyBub3QgZml0IGludG8gdGhlIGZsYXNoIG1lbW9yeSwgcGxl
YXNlIHZlcmlmeSB0aGUgaW1hZ2UgZmlsZSEnKQogCQkJCQldKSk7CiAKLQkJCQlpZiAoaXNfaW52
YWxpZCkKKwkJCQlpZiAoIWlzX3ZhbGlkKQogCQkJCQlib2R5LnB1c2goRSgncCcsIHsgJ2NsYXNz
JzogJ2FsZXJ0LW1lc3NhZ2UnIH0sIFsKLQkJCQkJCXJlc1sxXS5zdGRlcnIgPyByZXNbMV0uc3Rk
ZXJyIDogJycsCi0JCQkJCQlyZXNbMV0uc3RkZXJyID8gRSgnYnInKSA6ICcnLAotCQkJCQkJcmVz
WzFdLnN0ZGVyciA/IEUoJ2JyJykgOiAnJywKKwkJCQkJCXJlc1syXS5zdGRlcnIgPyByZXNbMl0u
c3RkZXJyIDogJycsCisJCQkJCQlyZXNbMl0uc3RkZXJyID8gRSgnYnInKSA6ICcnLAorCQkJCQkJ
cmVzWzJdLnN0ZGVyciA/IEUoJ2JyJykgOiAnJywKIAkJCQkJCV8oJ1RoZSB1cGxvYWRlZCBpbWFn
ZSBmaWxlIGRvZXMgbm90IGNvbnRhaW4gYSBzdXBwb3J0ZWQgZm9ybWF0LiBNYWtlIHN1cmUgdGhh
dCB5b3UgY2hvb3NlIHRoZSBnZW5lcmljIGltYWdlIGZvcm1hdCBmb3IgeW91ciBwbGF0Zm9ybS4n
KQogCQkJCQldKSk7CiAKLQkJCQlpZiAoaXNfaW52YWxpZCB8fCBpc190b29fYmlnKQorCQkJCWlm
ICghaXNfdmFsaWQgfHwgaXNfdG9vX2JpZykKIAkJCQkJYm9keS5wdXNoKEUoJ3AnLCB7fSwgRSgn
bGFiZWwnLCB7ICdjbGFzcyc6ICdidG4gYWxlcnQtbWVzc2FnZSBkYW5nZXInIH0sIFsKIAkJCQkJ
CWZvcmNlLCAnICcsIF8oJ0ZvcmNlIHVwZ3JhZGUnKSwKIAkJCQkJCUUoJ2JyJyksIEUoJ2JyJyks
CkBAIC0zODksNyArMzk5LDcgQEAgcmV0dXJuIEwudmlldy5leHRlbmQoewogCQkJCXZhciBjbnRi
dG4gPSBFKCdidXR0b24nLCB7CiAJCQkJCSdjbGFzcyc6ICdidG4gY2JpLWJ1dHRvbi1hY3Rpb24g
aW1wb3J0YW50JywKIAkJCQkJJ2NsaWNrJzogTC51aS5jcmVhdGVIYW5kbGVyRm4odGhpcywgJ2hh
bmRsZVN5c3VwZ3JhZGVDb25maXJtJywgYnRuLCBrZWVwLmNoZWNrZWQsIGZvcmNlLmNoZWNrZWQp
LAotCQkJCQknZGlzYWJsZWQnOiAoaXNfaW52YWxpZCB8fCBpc190b29fYmlnKSA/IHRydWUgOiBu
dWxsCisJCQkJCSdkaXNhYmxlZCc6ICghaXNfdmFsaWQgfHwgaXNfdG9vX2JpZykgPyB0cnVlIDog
bnVsbAogCQkJCX0sIFsgXygnQ29udGludWUnKSBdKTsKIAogCQkJCWJvZHkucHVzaChFKCdkaXYn
LCB7ICdjbGFzcyc6ICdyaWdodCcgfSwgWwotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
