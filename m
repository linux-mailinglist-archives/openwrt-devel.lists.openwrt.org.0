Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BA6904E3
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 17:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUnd3EvcE+O8EQVyZBTjPaIc+vwyJqXekSKFFqSkjfI=; b=decPm5Ps4luu7R
	gGOn4YP4rxuh9EWK12iXow8p+gEZi0/iRjmSHIvBOpNnt4JoBTwp39yV5nS+XwiXDKueRaDA+gf3n
	1GMioEkolV+3syYmGtRlSs/3uVEl3mjOtTnVpu6ha6J7YHq5WcVLxzxdOJCfm6s83qUrapDIQ/SZm
	ygsRv+di8hy9xoBm5zsG+kCyePAJTSQs+6Yz62BEwtK6vwLBYpSdS5YwU9zZiSoxGaw36lIIxKg+V
	YrmD7/TQT7wqexttJxqgaP0xg73fHlo8QMhIRB5yeB13Wpr7E8fEUtxLYsiKs3/RZT4khC5gKjcsX
	mUEQCFGHx2JWnt1tF9ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyePj-0001XM-2A; Fri, 16 Aug 2019 15:45:15 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyePa-0000hG-1O
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 15:45:07 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so4342963lfb.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 16 Aug 2019 08:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=itmDaSJ1kAiCO5WgAiWfOdporXna9eOGPAB2FwMtXGM=;
 b=qu0cw6zfE1ir/OlOJQn8Qf9E7kncQEpEDF3hg982j5LR1dxQET6iFQ1Qd1hVy6geIE
 Bpmj4hCLbNkB/PJC9FD9qoLmrFNaTl+5pVSqjcFkqvzx7xU4xbBjl58RDmXXxarqZHlx
 JnT++03ZwACta3aZEyY+VbBU9kae+a3yjxzdDB/GPL8zBxdyiuYId/N9f0ZTHYw3wLJh
 SqeW3VBuCP1olDjTLCSTv7F8uUCpqejaqhBNLxomYNByRd0BGyvbzuuJZYMuNS8VoJRC
 AoZN8IxWdjTU2Qb8ND7UO3dnz1I0IPTL8IuYEU/Dmazzz7PWsAWArvQXKPxOdI40fcYo
 rGaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=itmDaSJ1kAiCO5WgAiWfOdporXna9eOGPAB2FwMtXGM=;
 b=LniSYVlQlrrmPrgFKwHJBnmGu3luf7feaI9UX+XIl+TbUMQg5mKvFi9u3TM6YxMyFY
 72f3yySNJh8WP3aLFO6M89dWQkLC7HRQmEkJXfgtbI5ezsDAp+s3E69QfagNNqLS4cRt
 WTXt0c7/Oq/M7sDzp8fCKjX7z5YNBLyafYrpo5l1dbzlahej23yj0vGHQU7ljJNHFbMR
 tfUWzx4cksfp6mlA5DlYNF/Fh39B26iOzdG7qmqlEMvrRYpyKE+3jRpOWi6xSi7ZgC9G
 cPmklL8Xz7IrdbhKJ7QUC44KgbylRdiRHoLVUW1FpmxFqVjOe2krblyi1xnURFWWi2ok
 ScCQ==
X-Gm-Message-State: APjAAAWuHAo2UiETCt/8AFd2MH+FMAxRVZoU2ASaYn8Qy7/3rQw+W1aI
 We4GFA7P566oDE6LipCWhHtPteRI
X-Google-Smtp-Source: APXvYqwePN1mUSDBe0/0kIKR0mEuAOzhM4zTF6UF+XmRHOpSgzSBrtxnIsUC6dJ6UuVSsCnD6PGF2Q==
X-Received: by 2002:a19:428c:: with SMTP id p134mr5082842lfa.166.1565970302958; 
 Fri, 16 Aug 2019 08:45:02 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 141sm1007889ljf.32.2019.08.16.08.45.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 08:45:02 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 16 Aug 2019 17:44:55 +0200
Message-Id: <20190816154455.1152-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816142848.14412-1-zajec5@gmail.com>
References: <20190816142848.14412-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_084506_113246_75CA1A08 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH procd V2] system: support passing "options"
 to the "sysupgrade" ubus method
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
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKT2JqZWN0IHBhc3NlZCBh
cyAib3B0aW9ucyIgZ2V0cyB0cmFuc2xhdGVkIGludG8gZW52aXJvbm1lbnQgdmFyaWFibGVzClVQ
R1JBREVfT1BUXyouIEUuZy4KIm9wdGlvbnMiOiB7ICJmb28iOiA1IH0Kd2lsbCByZXN1bHQgaW4g
c2V0dGluZyBVUEdSQURFX09QVF9GT089NS4KClRoaXMgYWxsb3dzIHN0YWdlMiBzeXN1cGdyYWRl
IHRvIGdldCBvcHRpb25zIGV4cGxpY2l0bHkuIFNvIGZhciBpdCB3YXMKZ3Vlc3Npbmcgd2hhdCB0
byBkbyBieSBjaGVja2luZyBmb3IgZXhpc3RlbmNlIG9mIHNvbWUgZmlsZXMgKGUuZy4Kc3lzdXBn
cmFkZS50Z3opLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tp
LnBsPgotLS0KVjI6IFVzZSBhc3ByaW50ZigpICYgZHJvcCBzb21lIGJyYWNlcwotLS0KIGluaXRk
L3ByZWluaXQuYyB8ICAyICstCiBzeXN0ZW0uYyAgICAgICAgfCAgNSArKysrLQogc3lzdXBncmFk
ZS5jICAgIHwgNDMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQog
c3lzdXBncmFkZS5oICAgIHwgIDQgKysrLQogNCBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luaXRkL3ByZWluaXQuYyBiL2luaXRk
L3ByZWluaXQuYwppbmRleCBmYmIzNmRmLi4yYjRkZjRiIDEwMDY0NAotLS0gYS9pbml0ZC9wcmVp
bml0LmMKKysrIGIvaW5pdGQvcHJlaW5pdC5jCkBAIC03NSw3ICs3NSw3IEBAIGNoZWNrX3N5c3Vw
Z3JhZGUodm9pZCkKIAogCWZjbG9zZShzeXN1cGdyYWRlKTsKIAotCXN5c3VwZ3JhZGVfZXhlY191
cGdyYWRlZChwcmVmaXgsIHBhdGgsIGNvbW1hbmQpOworCXN5c3VwZ3JhZGVfZXhlY191cGdyYWRl
ZChwcmVmaXgsIHBhdGgsIGNvbW1hbmQsIE5VTEwpOwogCiAJd2hpbGUgKHRydWUpCiAJCXNsZWVw
KDEpOwpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0ZW0uYwppbmRleCA4ZWQzZjkzLi43Mzhm
MzI3IDEwMDY0NAotLS0gYS9zeXN0ZW0uYworKysgYi9zeXN0ZW0uYwpAQCAtMzgwLDYgKzM4MCw3
IEBAIGVudW0gewogCVNZU1VQR1JBREVfUEFUSCwKIAlTWVNVUEdSQURFX1BSRUZJWCwKIAlTWVNV
UEdSQURFX0NPTU1BTkQsCisJU1lTVVBHUkFERV9PUFRJT05TLAogCV9fU1lTVVBHUkFERV9NQVgK
IH07CiAKQEAgLTM4Nyw2ICszODgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGJsb2Jtc2dfcG9s
aWN5IHN5c3VwZ3JhZGVfcG9saWN5W19fU1lTVVBHUkFERV9NQVhdID0gewogCVtTWVNVUEdSQURF
X1BBVEhdID0geyAubmFtZSA9ICJwYXRoIiwgLnR5cGUgPSBCTE9CTVNHX1RZUEVfU1RSSU5HIH0s
CiAJW1NZU1VQR1JBREVfUFJFRklYXSA9IHsgLm5hbWUgPSAicHJlZml4IiwgLnR5cGUgPSBCTE9C
TVNHX1RZUEVfU1RSSU5HIH0sCiAJW1NZU1VQR1JBREVfQ09NTUFORF0gPSB7IC5uYW1lID0gImNv
bW1hbmQiLCAudHlwZSA9IEJMT0JNU0dfVFlQRV9TVFJJTkcgfSwKKwlbU1lTVVBHUkFERV9PUFRJ
T05TXSA9IHsgLm5hbWUgPSAib3B0aW9ucyIsIC50eXBlID0gQkxPQk1TR19UWVBFX1RBQkxFIH0s
CiB9OwogCiBzdGF0aWMgaW50IHN5c3VwZ3JhZGUoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LCBz
dHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKQEAgLTQwNCw3ICs0MDYsOCBAQCBzdGF0aWMgaW50IHN5
c3VwZ3JhZGUoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9i
aiwKIAogCXN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChibG9ibXNnX2dldF9zdHJpbmcodGJbU1lT
VVBHUkFERV9QUkVGSVhdKSwKIAkJCQkgYmxvYm1zZ19nZXRfc3RyaW5nKHRiW1NZU1VQR1JBREVf
UEFUSF0pLAotCQkJCSB0YltTWVNVUEdSQURFX0NPTU1BTkRdID8gYmxvYm1zZ19nZXRfc3RyaW5n
KHRiW1NZU1VQR1JBREVfQ09NTUFORF0pIDogTlVMTCk7CisJCQkJIHRiW1NZU1VQR1JBREVfQ09N
TUFORF0gPyBibG9ibXNnX2dldF9zdHJpbmcodGJbU1lTVVBHUkFERV9DT01NQU5EXSkgOiBOVUxM
LAorCQkJCSB0YltTWVNVUEdSQURFX09QVElPTlNdKTsKIAogCS8qIHN5c3VwZ3JhZGVfZXhlY191
cGdyYWRlZCgpIHdpbGwgbmV2ZXIgcmV0dXJuIHVubGVzcyBzb21ldGhpbmcgaGFzIGdvbmUgd3Jv
bmcgKi8KIAlyZXR1cm4gVUJVU19TVEFUVVNfVU5LTk9XTl9FUlJPUjsKZGlmZiAtLWdpdCBhL3N5
c3VwZ3JhZGUuYyBiL3N5c3VwZ3JhZGUuYwppbmRleCAwN2UzM2Y3Li4yOWM0YzliIDEwMDY0NAot
LS0gYS9zeXN1cGdyYWRlLmMKKysrIGIvc3lzdXBncmFkZS5jCkBAIC0xNywxNSArMTcsMjAgQEAK
ICNpbmNsdWRlICJ3YXRjaGRvZy5oIgogI2luY2x1ZGUgInN5c3VwZ3JhZGUuaCIKIAorI2luY2x1
ZGUgPGN0eXBlLmg+CiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpbmNsdWRlIDxzdGRsaWIuaD4KICNp
bmNsdWRlIDx1bmlzdGQuaD4KIAorI2luY2x1ZGUgPGxpYnVib3gvYmxvYm1zZy5oPgogCi12b2lk
IHN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBjaGFyICpwcmVmaXgsIGNoYXIgKnBhdGgs
IGNoYXIgKmNvbW1hbmQpCit2b2lkIHN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBjaGFy
ICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIgKmNvbW1hbmQsCisJCQkgICAgICBzdHJ1Y3QgYmxv
Yl9hdHRyICpvcHRpb25zKQogewogCWNoYXIgKndkdF9mZCA9IHdhdGNoZG9nX2ZkKCk7CiAJY2hh
ciAqYXJndltdID0geyAiL3NiaW4vdXBncmFkZWQiLCBOVUxMLCBOVUxMLCBOVUxMfTsKKwlzdHJ1
Y3QgYmxvYl9hdHRyICpvcHRpb247CisJaW50IHJlbTsKIAlpbnQgcmV0OwogCiAJcmV0ID0gY2hy
b290KHByZWZpeCk7CkBAIC00MSw2ICs0Niw0MiBAQCB2b2lkIHN5c3VwZ3JhZGVfZXhlY191cGdy
YWRlZChjb25zdCBjaGFyICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIgKmNvbW1hbmQpCiAJCXdh
dGNoZG9nX3NldF9jbG9leGVjKGZhbHNlKTsKIAkJc2V0ZW52KCJXRFRGRCIsIHdkdF9mZCwgMSk7
CiAJfQorCisJYmxvYm1zZ19mb3JfZWFjaF9hdHRyKG9wdGlvbiwgb3B0aW9ucywgcmVtKSB7CisJ
CWNvbnN0IGNoYXIgKnByZWZpeCA9ICJVUEdSQURFX09QVF8iOworCQljaGFyIHZhbHVlWzExXTsK
KwkJY2hhciAqbmFtZTsKKwkJY2hhciAqYzsKKwkJaW50IHRtcDsKKworCQlpZiAoYXNwcmludGYo
Jm5hbWUsICIlcyVzIiwgcHJlZml4LCBibG9ibXNnX25hbWUob3B0aW9uKSkgPCAwKQorCQkJY29u
dGludWU7CisJCWZvciAoYyA9IG5hbWUgKyBzdHJsZW4ocHJlZml4KTsgKmM7IGMrKykKKwkJCSpj
ID0gdG91cHBlcigqYyk7CisKKwkJc3dpdGNoIChibG9ibXNnX3R5cGUob3B0aW9uKSkgeworCQlj
YXNlIEJMT0JNU0dfVFlQRV9JTlQzMjoKKwkJCXRtcCA9IGJsb2Jtc2dfZ2V0X3UzMihvcHRpb24p
OworCQkJYnJlYWs7CisJCWNhc2UgQkxPQk1TR19UWVBFX0lOVDE2OgorCQkJdG1wID0gYmxvYm1z
Z19nZXRfdTE2KG9wdGlvbik7CisJCQlicmVhazsKKwkJY2FzZSBCTE9CTVNHX1RZUEVfSU5UODoK
KwkJCXRtcCA9IGJsb2Jtc2dfZ2V0X3U4KG9wdGlvbik7CisJCQlicmVhazsKKwkJZGVmYXVsdDoK
KwkJCWZwcmludGYoc3RkZXJyLCAiT3B0aW9uIFwiJXNcIiBoYXMgdW5zdXBwb3J0ZWQgdHlwZTog
JWRcbiIsCisJCQkJYmxvYm1zZ19uYW1lKG9wdGlvbiksIGJsb2Jtc2dfdHlwZShvcHRpb24pKTsK
KwkJCWZyZWUobmFtZSk7CisJCQljb250aW51ZTsKKwkJfQorCQlzbnByaW50Zih2YWx1ZSwgc2l6
ZW9mKHZhbHVlKSwgIiV1IiwgdG1wKTsKKworCQlzZXRlbnYobmFtZSwgdmFsdWUsIDEpOworCisJ
CWZyZWUobmFtZSk7CisJfQorCiAJZXhlY3ZwKGFyZ3ZbMF0sIGFyZ3YpOwogCiAJLyogQ2xlYW51
cCBvbiBmYWlsdXJlICovCmRpZmYgLS1naXQgYS9zeXN1cGdyYWRlLmggYi9zeXN1cGdyYWRlLmgK
aW5kZXggOGMwOWZjOS4uYzg0ZTQ5NCAxMDA2NDQKLS0tIGEvc3lzdXBncmFkZS5oCisrKyBiL3N5
c3VwZ3JhZGUuaApAQCAtMTQsOCArMTQsMTAgQEAKICNpZm5kZWYgX19QUk9DRF9TWVNVUEdSQURF
X0gKICNkZWZpbmUgX19QUk9DRF9TWVNVUEdSQURFX0gKIAorc3RydWN0IGJsb2JfYXR0cjsKIAot
dm9pZCBzeXN1cGdyYWRlX2V4ZWNfdXBncmFkZWQoY29uc3QgY2hhciAqcHJlZml4LCBjaGFyICpw
YXRoLCBjaGFyICpjb21tYW5kKTsKK3ZvaWQgc3lzdXBncmFkZV9leGVjX3VwZ3JhZGVkKGNvbnN0
IGNoYXIgKnByZWZpeCwgY2hhciAqcGF0aCwgY2hhciAqY29tbWFuZCwKKwkJCSAgICAgIHN0cnVj
dCBibG9iX2F0dHIgKm9wdGlvbnMpOwogCiAKICNlbmRpZgotLSAKMi4yMS4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
