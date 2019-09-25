Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C209EBE1CB
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 17:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x05pMMUOnoAgn1cbxfYnqp3+6wFBHtOjIFO0k13MGFk=; b=KVwGxdljNeZu0G
	d0GFgD/t+0DdGsivGYPR/Fua2y0+77AekNTh80We0Tx9yOe9Df4IMi/o2Q8kGjc5AID61FsuWZRWC
	w/WFH8+PGLuPT7RoODBi6HPuMp7Y/irdFfURqTkHB2gQwAQucENRVxk3t6fj5B5K0PZs7fQZniprg
	hZU4FSxY7vBd4STfx5k02N5C518EBWZqFek0IAuTHc/Bu6zz6VEVLbuxjNwKR0BzIRPhp1UAxeTwb
	p3gWZfIOsJFO5PSy44TI9K6nCL8bLqc+EH/N6LimwHNmhQGEd5if9FnHzZH/dAEK3Gh1CiEC2g5PP
	lz1SX/iQ3BPgvnGNbiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9eV-00076e-O3; Wed, 25 Sep 2019 15:56:28 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9e0-00075S-O8
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 15:55:58 +0000
Received: by mail-lf1-x135.google.com with SMTP id d17so4611769lfa.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 08:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9FnRspK42mUNV8iCv9uTRlO0m/cGr5B9hzzNqmeqpFc=;
 b=oGl7DZguAnLX9YBrMPcm8L1gxQt9mGsk/UP8hsFlZZ/YXVgangqqIBGx2IFul40RUJ
 gJwiIZ0/yFkCasYVZX0oo57p8YobsOyOHO7tAyTFHt0EdFIpPO7YWZy1yvDf2CZb74VW
 GkcjxXRCnYAo06POQPChECofEWhDnt9/T02bICeEGm3pRGjvDqhYg5eRgwhRe5DZtKAL
 ONDFdxBgChh9Iacf8do3AXPiegW6Z+0qzt9sLFT67vZ6mNC3hwuGBgWeD4Pu8IAmboPC
 8yRVdtU35l+wg8TT0sPIGBfh04CTCaVkCI4gdcOQ5VOOovl2T2Iep73RzV5KA5vx8gQJ
 v3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9FnRspK42mUNV8iCv9uTRlO0m/cGr5B9hzzNqmeqpFc=;
 b=iv69cIt8y4n55g7I1ggbJAoND5iFZuZSAw06ZII59cKs3uWaWKTjHomQ18e2oPCCfl
 F2O5zeAX/xrBHVCVw5FUZB+SWp161jmcOgz5bVeR9GxK+h6+p7Z8IdmuKEg5LtqSqt4n
 xIUFNQWrSRFwBy9c4Es70stv9IazDGiuKobdWCAW3hEf+Od8wRbaAK+cri4UAPCX80wz
 MlFZyl703rpY6RpF/v9jxNCPtd2LZEqzZw0ahM5wkpfMvo+XDveYPWzYhyVA1kPqLBtT
 VvEdBkRcoSNiK0wSDkxBsKz6xWQdJxeOuLB0oV8Ul6Bfk4N5pDTQOUR15K74/sbgeWe8
 NSUA==
X-Gm-Message-State: APjAAAUOTKsKGcqr5GL0CI4FZGz/2Rgwydh5Jy48nKGBbDcxF1ZYvWrb
 vm/CKWAV2h/1wMGSUoQntgC2wdtA
X-Google-Smtp-Source: APXvYqyDNh3UiBRw76R42KsCpsqaV/DI5oYsrprehhvZQ3Wp7bBtigoT+/7jj9sDGOdYSMTC1exW0w==
X-Received: by 2002:ac2:5091:: with SMTP id f17mr6745802lfm.107.1569426954512; 
 Wed, 25 Sep 2019 08:55:54 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 202sm1282143ljf.75.2019.09.25.08.55.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 08:55:53 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	Jo-Philipp Wich <jo@mein.io>
Date: Wed, 25 Sep 2019 17:55:43 +0200
Message-Id: <20190925155543.9061-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_085556_862503_71732044 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
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
Subject: [OpenWrt-Devel] [PATCH luci] luci-mod-system: check for sysupgrade
 with backup possibility
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKU29tZSBmaXJtd2FyZSBp
bWFnZXMgbWF5IG5vdCBzdXBwb3J0IHByZXNlcnZpbmcgYmFja3VwLiBJbiBzdWNoIGNhc2VzCmRp
c3BsYXkgYSB3YXJuaW5nIGFuZCBkaXNhYmxlIHJlbGV2YW50IGNoZWNrYm94LgotLS0KIC4uLi9y
ZXNvdXJjZXMvdmlldy9zeXN0ZW0vZmxhc2guanMgICAgICAgICAgICB8IDIzICsrKysrKysrKysr
KystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL21vZHVsZXMvbHVjaS1tb2Qtc3lzdGVtL2h0ZG9jcy9sdWNpLXN0YXRp
Yy9yZXNvdXJjZXMvdmlldy9zeXN0ZW0vZmxhc2guanMgYi9tb2R1bGVzL2x1Y2ktbW9kLXN5c3Rl
bS9odGRvY3MvbHVjaS1zdGF0aWMvcmVzb3VyY2VzL3ZpZXcvc3lzdGVtL2ZsYXNoLmpzCmluZGV4
IDEzNDlmZWNkNC4uNTQ0ZGViMjc5IDEwMDY0NAotLS0gYS9tb2R1bGVzL2x1Y2ktbW9kLXN5c3Rl
bS9odGRvY3MvbHVjaS1zdGF0aWMvcmVzb3VyY2VzL3ZpZXcvc3lzdGVtL2ZsYXNoLmpzCisrKyBi
L21vZHVsZXMvbHVjaS1tb2Qtc3lzdGVtL2h0ZG9jcy9sdWNpLXN0YXRpYy9yZXNvdXJjZXMvdmll
dy9zeXN0ZW0vZmxhc2guanMKQEAgLTM1OSwxMCArMzU5LDExIEBAIHJldHVybiBMLnZpZXcuZXh0
ZW5kKHsKIAkJCQkJLnRoZW4oZnVuY3Rpb24ocmVzKSB7IHJlcGx5LnB1c2gocmVzKTsgcmV0dXJu
IHJlcGx5OyB9KTsKIAkJCX0sIHRoaXMsIGV2LnRhcmdldCkpCiAJCQkudGhlbihMLmJpbmQoZnVu
Y3Rpb24oYnRuLCByZXMpIHsKLQkJCQl2YXIga2VlcCA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3Io
J1tkYXRhLW5hbWU9ImtlZXAiXSBpbnB1dFt0eXBlPSJjaGVja2JveCJdJyksCisJCQkJdmFyIGtl
ZXAgPSBFKCdpbnB1dCcsIHsgdHlwZTogJ2NoZWNrYm94JyB9KSwKIAkJCQkgICAgZm9yY2UgPSBF
KCdpbnB1dCcsIHsgdHlwZTogJ2NoZWNrYm94JyB9KSwKIAkJCQkgICAgaXNfdmFsaWQgPSByZXNb
MV0udmFsaWQsCiAJCQkJICAgIGlzX2ZvcmNlYWJsZSA9IHJlc1sxXS5mb3JjZWFibGUsCisJCQkJ
ICAgIGFsbG93X2JhY2t1cCA9IHJlc1sxXS5hbGxvd19iYWNrdXAsCiAJCQkJICAgIGlzX3Rvb19i
aWcgPSAoc3RvcmFnZV9zaXplID4gMCAmJiByZXNbMF0uc2l6ZSA+IHN0b3JhZ2Vfc2l6ZSksCiAJ
CQkJICAgIGJvZHkgPSBbXTsKIApAQCAtMzcwLDggKzM3MSw3IEBAIHJldHVybiBMLnZpZXcuZXh0
ZW5kKHsKIAkJCQlib2R5LnB1c2goRSgndWwnLCB7fSwgWwogCQkJCQlyZXNbMF0uc2l6ZSA/IEUo
J2xpJywge30sICclczogJTEwMjQuMm1CJy5mb3JtYXQoXygnU2l6ZScpLCByZXNbMF0uc2l6ZSkp
IDogJycsCiAJCQkJCXJlc1swXS5jaGVja3N1bSA/IEUoJ2xpJywge30sICclczogJXMnLmZvcm1h
dChfKCdNRDUnKSwgcmVzWzBdLmNoZWNrc3VtKSkgOiAnJywKLQkJCQkJcmVzWzBdLnNoYTI1NnN1
bSA/IEUoJ2xpJywge30sICclczogJXMnLmZvcm1hdChfKCdTSEEyNTYnKSwgcmVzWzBdLnNoYTI1
NnN1bSkpIDogJycsCi0JCQkJCUUoJ2xpJywge30sIGtlZXAuY2hlY2tlZCA/IF8oJ0NvbmZpZ3Vy
YXRpb24gZmlsZXMgd2lsbCBiZSBrZXB0JykgOiBfKCdDYXV0aW9uOiBDb25maWd1cmF0aW9uIGZp
bGVzIHdpbGwgYmUgZXJhc2VkJykpCisJCQkJCXJlc1swXS5zaGEyNTZzdW0gPyBFKCdsaScsIHt9
LCAnJXM6ICVzJy5mb3JtYXQoXygnU0hBMjU2JyksIHJlc1swXS5zaGEyNTZzdW0pKSA6ICcnCiAJ
CQkJXSkpOwogCiAJCQkJaWYgKCFpc192YWxpZCB8fCBpc190b29fYmlnKQpAQCAtMzkwLDYgKzM5
MCwxOCBAQCByZXR1cm4gTC52aWV3LmV4dGVuZCh7CiAJCQkJCQlfKCdUaGUgdXBsb2FkZWQgaW1h
Z2UgZmlsZSBkb2VzIG5vdCBjb250YWluIGEgc3VwcG9ydGVkIGZvcm1hdC4gTWFrZSBzdXJlIHRo
YXQgeW91IGNob29zZSB0aGUgZ2VuZXJpYyBpbWFnZSBmb3JtYXQgZm9yIHlvdXIgcGxhdGZvcm0u
JykKIAkJCQkJXSkpOwogCisJCQkJaWYgKCFhbGxvd19iYWNrdXApCisJCQkJCWJvZHkucHVzaChF
KCdwJywgeyAnY2xhc3MnOiAnYWxlcnQtbWVzc2FnZScgfSwgWworCQkJCQkJXygnVGhlIHVwbG9h
ZGVkIGZpcm13YXJlIGRvZXMgbm90IGFsbG93IGtlZXBpbmcgY3VycmVudCBjb25maWd1cmF0aW9u
LicpCisJCQkJCV0pKTsKKwkJCQlpZiAoYWxsb3dfYmFja3VwKQorCQkJCQlrZWVwLmNoZWNrZWQg
PSB0cnVlOworCQkJCWVsc2UKKwkJCQkJa2VlcC5kaXNhYmxlZCA9IHRydWU7CisJCQkJYm9keS5w
dXNoKEUoJ3AnLCB7fSwgRSgnbGFiZWwnLCB7ICdjbGFzcyc6ICdidG4nIH0sIFsKKwkJCQkJa2Vl
cCwgJyAnLCBfKCdLZWVwIHNldHRpbmdzIGFuZCByZXRhaW4gdGhlIGN1cnJlbnQgY29uZmlndXJh
dGlvbicpCisJCQkJXSkpKTsKKwogCQkJCWlmICgoIWlzX3ZhbGlkIHx8IGlzX3Rvb19iaWcpICYm
IGlzX2ZvcmNlYWJsZSkKIAkJCQkJYm9keS5wdXNoKEUoJ3AnLCB7fSwgRSgnbGFiZWwnLCB7ICdj
bGFzcyc6ICdidG4gYWxlcnQtbWVzc2FnZSBkYW5nZXInIH0sIFsKIAkJCQkJCWZvcmNlLCAnICcs
IF8oJ0ZvcmNlIHVwZ3JhZGUnKSwKQEAgLTUzNywxNSArNTQ5LDEyIEBAIHJldHVybiBMLnZpZXcu
ZXh0ZW5kKHsKIAogCQlvID0gcy5vcHRpb24oZm9ybS5TZWN0aW9uVmFsdWUsICdhY3Rpb25zJywg
Zm9ybS5OYW1lZFNlY3Rpb24sICdhY3Rpb25zJywgJ2FjdGlvbnMnLCBfKCdGbGFzaCBuZXcgZmly
bXdhcmUgaW1hZ2UnKSwKIAkJCWhhc19zeXN1cGdyYWRlCi0JCQkJPyBfKCdVcGxvYWQgYSBzeXN1
cGdyYWRlLWNvbXBhdGlibGUgaW1hZ2UgaGVyZSB0byByZXBsYWNlIHRoZSBydW5uaW5nIGZpcm13
YXJlLiBDaGVjayAiS2VlcCBzZXR0aW5ncyIgdG8gcmV0YWluIHRoZSBjdXJyZW50IGNvbmZpZ3Vy
YXRpb24gKHJlcXVpcmVzIGEgY29tcGF0aWJsZSBmaXJtd2FyZSBpbWFnZSkuJykKKwkJCQk/IF8o
J1VwbG9hZCBhIHN5c3VwZ3JhZGUtY29tcGF0aWJsZSBpbWFnZSBoZXJlIHRvIHJlcGxhY2UgdGhl
IHJ1bm5pbmcgZmlybXdhcmUuJykKIAkJCQk6IF8oJ1NvcnJ5LCB0aGVyZSBpcyBubyBzeXN1cGdy
YWRlIHN1cHBvcnQgcHJlc2VudDsgYSBuZXcgZmlybXdhcmUgaW1hZ2UgbXVzdCBiZSBmbGFzaGVk
IG1hbnVhbGx5LiBQbGVhc2UgcmVmZXIgdG8gdGhlIHdpa2kgZm9yIGRldmljZSBzcGVjaWZpYyBp
bnN0YWxsIGluc3RydWN0aW9ucy4nKSk7CiAKIAkJc3MgPSBvLnN1YnNlY3Rpb247CiAKIAkJaWYg
KGhhc19zeXN1cGdyYWRlKSB7Ci0JCQlvID0gc3Mub3B0aW9uKGZvcm0uRmxhZywgJ2tlZXAnLCBf
KCdLZWVwIHNldHRpbmdzJykpOwotCQkJby5kZWZhdWx0ID0gby5lbmFibGVkOwotCiAJCQlvID0g
c3Mub3B0aW9uKGZvcm0uQnV0dG9uLCAnc3lzdXBncmFkZScsIF8oJ0ltYWdlJykpOwogCQkJby5p
bnB1dHN0eWxlID0gJ2FjdGlvbiBpbXBvcnRhbnQnOwogCQkJby5pbnB1dHRpdGxlID0gXygnRmxh
c2ggaW1hZ2UuLi4nKTsKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
