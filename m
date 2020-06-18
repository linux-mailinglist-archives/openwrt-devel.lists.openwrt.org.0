Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0704B1FF2F8
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 15:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m7wnsosGYzBvba/E26xYV8BwtCauKcjs/vahxv4q3YM=; b=BhKI1ymxSc8jpa
	qVTXo1ivCAMIH0zTucrEDELqB63Az1xB8GEVUIRqaPIwPx46eZphnbjDQR4iq6DlIJL3uDTQpW/58
	CObCSCMjGJUzv9GwQKtxvWlCjZ1dQufQTEjUClkd2NJ5XwRsPWlfYQUvFnVHHWFfR7bnvZHpsRt8x
	BCjKGsZUM8KMYlsj+a6gnPL6P9S4KU6W+blEteVDWR9TcNEKM3DGvp2NiJ2ITsF5OGT6biVWmPTlo
	KlC2WPHOPzKbE8a+xVaTWEOd3GZIUowMCVLxnPseCiga7KuHKog2j7Pl6hL8kI3UOcwqkjA5v1/fd
	E28h3GqpUgJU17z4SZLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluYT-00009X-AN; Thu, 18 Jun 2020 13:26:09 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluYL-00008Z-I2
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 13:26:02 +0000
Received: by mail-lj1-x231.google.com with SMTP id i3so7234853ljg.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 06:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TIRabxQCZ+z2Ra7czlOwXCkaWs5a/LptVAYiFFlQ4/E=;
 b=DZGeleX+41bU5vDmXDMh76aNHivJtvilrQum43ZuU06WnTweCwWpmyWWSJbjECORPF
 mJOxGno9uVntObvjJZOrWPpiVF62E5nTjrj2Ytdh+AbzwEUObogUrTjRtIi5lPnwv36s
 u1GsRvOLMgwxysyja+0k6okI37AMi1R9NzN3pyT6U4r+4cFxIwY10fbZOKnvyX51J5qy
 uaL+KMuxsyWgL5SZR/voLR3d20o8e0mQwOSjjTcX52d46hGQYuX3VvUNHk8/fH+rSlS1
 Vbo9Uf8iE4LabxcXM2Y1sQ0Xn/TXClZEbpfCj6T0p4VQPKM2iu/pmbbwBI38oz8ODBIN
 LKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TIRabxQCZ+z2Ra7czlOwXCkaWs5a/LptVAYiFFlQ4/E=;
 b=KPJi8S0KMrv9BKMXeu/wtdEkllI2QghQ0QQxzTr2JZryo9w4KLmqMr0EurZAm4aVVX
 8LrnXyEq+tpGZoVgCDeApqcQCHTWL9eRXXu7AHmWXua952HCvvfJC6OoQ0p5u+BpGapu
 OwvkSbcbZ8j++oclQ0/J1TXvTy72WXJ0JO4P6LZrVO8tOPEKx3e2nfhQTNC8eZlqVTxZ
 kHu3OY+pH4IoSHY+N82H4T52xOw7NrCqvbb5tc+kKZkqbCtnl/SAkFkNN6R0pi8dbU33
 nJX+1ptBHEh0dGeY+VyOx5rQMBS1ZeI5WHMMk2qFm4fWM/9CFJT2j8BJxKoDn421IH8P
 05tA==
X-Gm-Message-State: AOAM5313i7N8sSeA7gvxn1e4WiKfQOldgzE1BoQuleDWuBRMrBcYSMfJ
 d4+f5f71srX0clvj5sgGSKA7WlIc
X-Google-Smtp-Source: ABdhPJzyJldzrxnDVLhCpUQEfrUk4HN6/8g4VdMYTQaptxyhdbTEbL3fdXtda6FYA3pCV9zZe2TCJA==
X-Received: by 2002:a05:651c:299:: with SMTP id
 b25mr2571545ljo.13.1592486758582; 
 Thu, 18 Jun 2020 06:25:58 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id a17sm747846lfo.73.2020.06.18.06.25.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 06:25:58 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jun 2020 15:25:18 +0200
Message-Id: <20200618132518.26000-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_062601_601038_5E950511 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH luci] luci-mod-system: use ubus method for
 reboot
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQncyBtb3JlIGdlbmVy
aWMgJiBjb252ZW5pZW50IHRoYW4gaGFyZGNvZGluZyAvc2Jpbi9yZWJvb3QgZXhlY3V0YWJsZQpw
YXRoLiBwcm9jZCBwcm92aWRlcyAicmVib290IiBtZXRob2Qgc2luY2UgMjAxNi4KClNpZ25lZC1v
ZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiAuLi4vbHVjaS1z
dGF0aWMvcmVzb3VyY2VzL3ZpZXcvc3lzdGVtL3JlYm9vdC5qcyAgICAgfCAxMyArKysrKysrKysr
LS0tCiAuLi4vcm9vdC91c3Ivc2hhcmUvcnBjZC9hY2wuZC9sdWNpLW1vZC1zeXN0ZW0uanNvbiAg
fCAgMyArKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9odGRvY3MvbHVjaS1zdGF0
aWMvcmVzb3VyY2VzL3ZpZXcvc3lzdGVtL3JlYm9vdC5qcyBiL21vZHVsZXMvbHVjaS1tb2Qtc3lz
dGVtL2h0ZG9jcy9sdWNpLXN0YXRpYy9yZXNvdXJjZXMvdmlldy9zeXN0ZW0vcmVib290LmpzCmlu
ZGV4IDNiOWY0NTBmYy4uMjQ5MjQ3YmFiIDEwMDY0NAotLS0gYS9tb2R1bGVzL2x1Y2ktbW9kLXN5
c3RlbS9odGRvY3MvbHVjaS1zdGF0aWMvcmVzb3VyY2VzL3ZpZXcvc3lzdGVtL3JlYm9vdC5qcwor
KysgYi9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9odGRvY3MvbHVjaS1zdGF0aWMvcmVzb3VyY2Vz
L3ZpZXcvc3lzdGVtL3JlYm9vdC5qcwpAQCAtMSw5ICsxLDE2IEBACiAndXNlIHN0cmljdCc7CiAn
cmVxdWlyZSB2aWV3JzsKICdyZXF1aXJlIGZzJzsKKydyZXF1aXJlIHJwYyc7CiAncmVxdWlyZSB1
aSc7CiAncmVxdWlyZSB1Y2knOwogCit2YXIgY2FsbFJlYm9vdCA9IHJwYy5kZWNsYXJlKHsKKwlv
YmplY3Q6ICdzeXN0ZW0nLAorCW1ldGhvZDogJ3JlYm9vdCcsCisJZXhwZWN0OiB7IHJlc3VsdDog
MCB9Cit9KTsKKwogcmV0dXJuIHZpZXcuZXh0ZW5kKHsKIAlsb2FkOiBmdW5jdGlvbigpIHsKIAkJ
cmV0dXJuIHVjaS5jaGFuZ2VzKCk7CkBAIC0zMSw5ICszOCw5IEBAIHJldHVybiB2aWV3LmV4dGVu
ZCh7CiAJfSwKIAogCWhhbmRsZVJlYm9vdDogZnVuY3Rpb24oZXYpIHsKLQkJcmV0dXJuIGZzLmV4
ZWMoJy9zYmluL3JlYm9vdCcpLnRoZW4oZnVuY3Rpb24ocmVzKSB7Ci0JCQlpZiAocmVzLmNvZGUg
IT0gMCkgewotCQkJCUwudWkuYWRkTm90aWZpY2F0aW9uKG51bGwsIEUoJ3AnLCBfKCdUaGUgcmVi
b290IGNvbW1hbmQgZmFpbGVkIHdpdGggY29kZSAlZCcpLmZvcm1hdChyZXMuY29kZSkpKTsKKwkJ
cmV0dXJuIGNhbGxSZWJvb3QoKS50aGVuKGZ1bmN0aW9uKHJlcykgeworCQkJaWYgKHJlcyAhPSAw
KSB7CisJCQkJTC51aS5hZGROb3RpZmljYXRpb24obnVsbCwgRSgncCcsIF8oJ1RoZSByZWJvb3Qg
Y29tbWFuZCBmYWlsZWQgd2l0aCBjb2RlICVkJykuZm9ybWF0KHJlcykpKTsKIAkJCQlMLnJhaXNl
KCdFcnJvcicsICdSZWJvb3QgZmFpbGVkJyk7CiAJCQl9CiAKZGlmZiAtLWdpdCBhL21vZHVsZXMv
bHVjaS1tb2Qtc3lzdGVtL3Jvb3QvdXNyL3NoYXJlL3JwY2QvYWNsLmQvbHVjaS1tb2Qtc3lzdGVt
Lmpzb24gYi9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9yb290L3Vzci9zaGFyZS9ycGNkL2FjbC5k
L2x1Y2ktbW9kLXN5c3RlbS5qc29uCmluZGV4IGIyOWRkYjhmNC4uMzhmZjk4ZGVlIDEwMDY0NAot
LS0gYS9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9yb290L3Vzci9zaGFyZS9ycGNkL2FjbC5kL2x1
Y2ktbW9kLXN5c3RlbS5qc29uCisrKyBiL21vZHVsZXMvbHVjaS1tb2Qtc3lzdGVtL3Jvb3QvdXNy
L3NoYXJlL3JwY2QvYWNsLmQvbHVjaS1tb2Qtc3lzdGVtLmpzb24KQEAgLTE2MCw3ICsxNjAsOCBA
QAogCQkJCSIvc2Jpbi9yZWJvb3QiOiBbICJleGVjIiBdCiAJCQl9LAogCQkJInVidXMiOiB7Ci0J
CQkJImZpbGUiOiBbICJleGVjIiBdCisJCQkJImZpbGUiOiBbICJleGVjIiBdLAorCQkJCSJzeXN0
ZW0iOiBbICJyZWJvb3QiIF0KIAkJCX0KIAkJfQogCX0KLS0gCjIuMjYuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
