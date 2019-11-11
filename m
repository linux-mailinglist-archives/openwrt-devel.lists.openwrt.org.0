Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6585BF7A86
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 19:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YSQU+pr7Famd2GEFfHDQFJZ+sA5ba7h/XKirS0QEsKw=; b=R70MPbRuov4dkq
	fk5Rz4vR8stOLGanR9fAd02Xb8vFpdqDvgO+jsFPjMhxrzoyE52s23cDmHCfray7CSnwmM5La3SsZ
	irIe92tvVGX42S7bOcgJRtf+GI42RYvgR3+nUAUKG5v3oZ/20AbgHzdYkjiGgVaSLjLe+Wgsn1c10
	IGHhdA47dPI4SrrU1Hvqy+U/slrg6QYMDSdGenbnhAze5yt8r5r2/0IGcMS5xrpMfyY5NN8DJ/L35
	1RH0nGw6j/0vq0InitLVNn4MVEfjqT+LwqZLS+OSNGdriTiMIVe7+3icReGstOkAhfUGRMfMRkTOj
	aWT3DLsAJT0BgvxStcWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUE8Q-0006Lo-KG; Mon, 11 Nov 2019 18:09:54 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUE8K-0006L4-BL
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 18:09:49 +0000
Received: by mail-lj1-x22d.google.com with SMTP id r7so14840972ljg.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 10:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=na34BySuKHfxr/u/zQcEfJnLigL4YaIzNRxG/58uhVU=;
 b=uGsxdbw3BKYBDhmRHVoRMHARUshjQdCsBJVuOcAVXlVnpAm/ABnB1ZtJCn6UPY0tnI
 8aaH3YyvhraKpA9QwILWYWB7J+zKFaORzj0/alZo3PHiZ/BPbosffiqK9Irt5bqGPRQ3
 QPGScV1vdy0bCMrGcPjNPr6O4QC5MSl0yEeDT2FbZGLGFU5QUD+mGz1gMR+/DBNop0F6
 gzX9zOI+hPgyd3XHphCGqvplK/z9x23pjGq6roDcppJJg8YkqA/tJujRKZyHA7sXTnA0
 H5NkJh1TI94rVqsY3dy4QKsYPh0iLrWBbZOyoFe3/eaJSqFOEtRQhncnx2eVt0qQgPwT
 a8Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=na34BySuKHfxr/u/zQcEfJnLigL4YaIzNRxG/58uhVU=;
 b=fMHDF1vX/H2D/9oN+heF2Whm/AYCNIht1aHoJAM3UsOlR3rxxmvqVRtrzGpScZq7Mk
 bZXHtc54RL+A5BJ40vVWyZn4XBiQrWjtey9BirMQjxux5nrVYBjfAyR3LbSVSvEK0cE4
 VC+1GbaUeXuzQilmUgsUMfQ1JoCODbhQGOABLuF4oeYfYj6620bAzU2xlo4ErWjKJAs7
 v5txOk8DrrjSUVosOJM8EB858vGrcjmtQtfl6KumvRXV6yTU7JILlK3AV6vx6bvW/DCX
 vyjMqJa8ExQ1b4AqyI/WluyZLNWkeq7DjKyYzzPOCjPycYOg1U4BswTcvj9omv35PFmk
 J9Xg==
X-Gm-Message-State: APjAAAXILvgGkEgeFlQX3lGqcOW4CkDZObxOvFTmohXTTUA4Ipmlgicc
 vrRwP2PWUu7yoAPmU6KEF+k497Cio38=
X-Google-Smtp-Source: APXvYqxOPwBDbE7w/v18IZUpltRcYi2RidNcuriAQrHGx5t7CbIkMgLQjSeoULHhYAjW4Z/REaRyOQ==
X-Received: by 2002:a2e:9a41:: with SMTP id k1mr16495393ljj.11.1573495785625; 
 Mon, 11 Nov 2019 10:09:45 -0800 (PST)
Received: from terminarch.lan (dotandthing.static.corbina.ru. [95.31.10.209])
 by smtp.gmail.com with ESMTPSA id
 s11sm6920542ljo.42.2019.11.11.10.09.44
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 10:09:44 -0800 (PST)
From: Ivan Baktsheev <dot.and.thing@gmail.com>
X-Google-Original-From: Ivan Baktsheev <dot.and.thing+openwrt@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
Date: Mon, 11 Nov 2019 21:09:42 +0300
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_100948_408984_5123AD41 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dot.and.thing[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] wlan factory defaults
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

SGksCgpJIHdhbnQgdG8gYWRkIG5ldyBkZXZpY2UsIGJ1dCBhcyBvZiBub3cgSSBjYW4gdXBsb2Fk
IGZpcm13YXJlIHdpcmVsZXNzbHkgYW5kIHRoZW4gSSBuZWVkIHRvIGNvbm5lY3QgdXNpbmcgd2ly
ZWQgY29ubmVjdGlvbiwgYmVjYXVzZSBpbiBzdG9jayBPcGVuV3J0IGltYWdlIHdpcmVsZXNzIGlz
IGRpc2FibGVkLgoKRm9yIG15IHJvdXRlciAoYW5kIHByb2JhYmx5IG1hbnkgb3RoZXJzKSBkZWZh
dWx0IFdpRmkgU1NJRCBzdG9yZWQgaW4gZmFjdG9yeSBwYXJ0aXRpb24gYW5kIGl04oCZcyBxdWl0
ZSBlYXN5IHRvIGV4dHJhY3QuIFVuZm9ydHVuYXRlbHksIHdpcmVsZXNzIHNldHVwIHRha2VzIHBs
YWNlIGluIGRpZmZlcmVudCB0aW1lIHRoYW4gd2lyZWQvZ3Bpby9sZWRzIHNldHVwIGZyb20gL2V0
Yy9ib2FyZC5kIGFuZCBkZWZhdWx0cyBhcmUgaGFyZGNvZGVkIGluIC9saWIvd2lmaS9tYWM4MDIx
MS5zaAoKQ3VycmVudGx5LCBJIGhhdmUgL2V0Yy9ib2FyZC5kLzA0X2ZhY3RvcnlfZGVmYXVsdHMs
IHdoaWNoIGV4dHJhY3RzIGZhY3RvcnkgZGVmYXVsdHMgZm9yIHJvb3QgcGFzc3dvcmQgYW5kIFdp
RmkuIFdpRmkgc2V0dGluZ3Mgd3JpdHRlbiBpbnRvIC9ldGMvZmFjdG9yeV84MDIxMSwgd2hpY2gg
dGhlbiByZWFkIGF0IC9saWIvd2lmaS9tYWM4MDIxMS5zaAoKSSB3b3VsZCBsaWtlIHRvIGludGVn
cmF0ZSB0aGlzIGludG8gT3BlbldydCwgcGxlYXNlIHRha2UgYSBsb29rIGF0IGZ1bGwgZXhhbXBs
ZSBhdCBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9hcGxhL2E4MWNhZDBhMWRjOWZlZGZlZmYxOTk0
MTExNmRhMzY5IGFuZCBzaGFyZSB5b3VyIHRob3VnaHRzLiBEaWZmIGZvciAvbGliL3dpZmkvbWFj
ODAyMTEuc2g6IAoKCmRpZmYgLS1naXQgYS9wYWNrYWdlL2tlcm5lbC9tYWM4MDIxMS9maWxlcy9s
aWIvd2lmaS9tYWM4MDIxMS5zaCBiL3BhY2thZ2Uva2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi93
aWZpL21hYzgwMjExLnNoCmluZGV4IGJlOWM1MzcuLjNjODhjODEgMTAwNjQ0Ci0tLSBhL3BhY2th
Z2Uva2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi93aWZpL21hYzgwMjExLnNoCisrKyBiL3BhY2th
Z2Uva2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi93aWZpL21hYzgwMjExLnNoCkBAIC0xLDEwICsx
LDEyIEBACiAjIS9iaW4vc2gKIC4gL2xpYi9uZXRpZmQvbWFjODAyMTEuc2gKIAogYXBwZW5kIERS
SVZFUlMgIm1hYzgwMjExIgogCisuIC9ldGMvZmFjdG9yeV84MDIxMQorCiBsb29rdXBfcGh5KCkg
ewogCVsgLW4gIiRwaHkiIF0gJiYgewogCQlbIC1kIC9zeXMvY2xhc3MvaWVlZTgwMjExLyRwaHkg
XSAmJiByZXR1cm4KIAl9CiAKQEAgLTk1LDI1ICs5Nyw0OSBAQCBkZXRlY3RfbWFjODAyMTEoKSB7
CiAJCQlkZXZfaWQ9InNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS5wYXRoPSckcGF0aCciCiAJ
CWVsc2UKIAkJCWRldl9pZD0ic2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9Lm1hY2FkZHI9JChj
YXQgL3N5cy9jbGFzcy9pZWVlODAyMTEvJHtkZXZ9L21hY2FkZHJlc3MpIgogCQlmaQogCisJCWV2
YWwgcmFkaW9faV9kaXNhYmxlZD1cJHJhZGlvJHtkZXZpZHh9X2Rpc2FibGVkCisJCXJhZGlvX2lf
ZGlzYWJsZWQ9JHtyYWRpb19pX2Rpc2FibGVkOi0ke3JhZGlvX2Rpc2FibGVkOi0xfX0KKwkJZXZh
bCByYWRpb19pX2NvdW50cnk9XCRyYWRpbyR7ZGV2aWR4fV9jb3VudHJ5CisJCXJhZGlvX2lfY291
bnRyeT0ke3JhZGlvX2lfY291bnRyeTotJHJhZGlvX2NvdW50cnl9CisJCWlmIFsgISAteiAiJHJh
ZGlvX2lfY291bnRyeSIgXSA7IHRoZW4KKwkJCXVjaV9yYWRpb19jb3VudHJ5PSJzZXQgd2lyZWxl
c3MucmFkaW8ke2RldmlkeH0uY291bnRyeT0ke3JhZGlvX2lfY291bnRyeX0iCisJCWVsc2UKKwkJ
CXVjaV9yYWRpb19jb3VudHJ5PQorCQlmaQorCisJCWV2YWwgd2xhbl9pX3NzaWQ9XCR3bGFuJHtk
ZXZpZHh9X3NzaWQKKwkJd2xhbl9pX3NzaWQ9JHt3bGFuX2lfc3NpZDotJHt3bGFuX3NzaWQ6LU9w
ZW5XcnR9fQorCQlldmFsIHdsYW5faV9lbmNyeXB0aW9uPVwkd2xhbiR7ZGV2aWR4fV9lbmNyeXB0
aW9uCisJCXdsYW5faV9lbmNyeXB0aW9uPSR7d2xhbl9pX2VuY3J5cHRpb246LSR7d2xhbl9lbmNy
eXB0aW9uOi1ub25lfX0KKwkJZXZhbCB3bGFuX2lfa2V5PVwkd2xhbiR7ZGV2aWR4fV9rZXkKKwkJ
d2xhbl9pX2tleT0ke3dsYW5faV9rZXk6LSR3bGFuX2tleX0KKwkJaWYgWyAhIC16ICIkd2xhbl9p
X2tleSIgXSA7IHRoZW4KKwkJCXVjaV93bGFuX2tleT0ic2V0IHdpcmVsZXNzLmRlZmF1bHRfcmFk
aW8ke2RldmlkeH0ua2V5PSR7d2xhbl9pX2tleX0iCisJCWVsc2UKKwkJCXVjaV93bGFuX2tleT0K
KwkJZmkKKwogCQl1Y2kgLXEgYmF0Y2ggPDwtRU9GCiAJCQlzZXQgd2lyZWxlc3MucmFkaW8ke2Rl
dmlkeH09d2lmaS1kZXZpY2UKIAkJCXNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS50eXBlPW1h
YzgwMjExCiAJCQlzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0uY2hhbm5lbD0ke2NoYW5uZWx9
CiAJCQlzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0uaHdtb2RlPTExJHttb2RlX2JhbmR9CiAJ
CQkke2Rldl9pZH0KIAkJCSR7aHRfY2FwYWJ9Ci0JCQlzZXQgd2lyZWxlc3MucmFkaW8ke2Rldmlk
eH0uZGlzYWJsZWQ9MQorCQkJc2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9LmRpc2FibGVkPSR7
cmFkaW9faV9kaXNhYmxlZH0KKwkJCSR7dWNpX3JhZGlvX2NvdW50cnl9CiAKIAkJCXNldCB3aXJl
bGVzcy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9PXdpZmktaWZhY2UKIAkJCXNldCB3aXJlbGVzcy5k
ZWZhdWx0X3JhZGlvJHtkZXZpZHh9LmRldmljZT1yYWRpbyR7ZGV2aWR4fQogCQkJc2V0IHdpcmVs
ZXNzLmRlZmF1bHRfcmFkaW8ke2RldmlkeH0ubmV0d29yaz1sYW4KIAkJCXNldCB3aXJlbGVzcy5k
ZWZhdWx0X3JhZGlvJHtkZXZpZHh9Lm1vZGU9YXAKLQkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3Jh
ZGlvJHtkZXZpZHh9LnNzaWQ9T3BlbldydAotCQkJc2V0IHdpcmVsZXNzLmRlZmF1bHRfcmFkaW8k
e2RldmlkeH0uZW5jcnlwdGlvbj1ub25lCisJCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7
ZGV2aWR4fS5zc2lkPSR7d2xhbl9pX3NzaWR9CisJCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRp
byR7ZGV2aWR4fS5lbmNyeXB0aW9uPSR7d2xhbl9pX2VuY3J5cHRpb259CisJCQkke3VjaV93bGFu
X2tleX0KIEVPRgogCQl1Y2kgLXEgY29tbWl0IHdpcmVsZXNzCiAKIAkJZGV2aWR4PSQoKCRkZXZp
ZHggKyAxKSkKIAlkb25lCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
