Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52B41FA337
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 00:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UYk14ao2bR32r9JLGqXUUX5KofpIKk400lHW7z3CtyQ=; b=JYlpxNzVWVDRL3
	tBJNemBK2LSCxnvFhxIWiJqfS/OUw3UOpyq5mKzCVMP36st+vxWCrV5K3j1/JFEhjb8Md0Z0ngaSu
	Zg1cCqQffRo2z1NkIhKBKXSpsPjvZXFF06C+ZYrLukzIW73b3R2Ri9bSDd6JwX3EAsn7V10ZkJsj+
	H0CDjjFaNds7pQDAaTA7ahtv+KA4aO9170vKWNS3gCChoUSTyI2OAt/rnkZPQYB+7chQdPJq++P4P
	zXW7QFTggF43GeOiQrfiwLGu8CuW47JRgMHS4Zm5fGDRgM7jnKlKYcqC2NSF1efounlxmA0UQPGWh
	7zmhH9QAb8jp347SbXqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkxIh-0002YK-VD; Mon, 15 Jun 2020 22:09:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkxIb-0002Xg-Dv
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 22:09:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id p5so18688386wrw.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 15:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uoEwMC4PgdCd/2qxe0qlEfyY7PtOw14vS+FFEP692MY=;
 b=vhc8Fiv/ZKN8InU5VZcwEFQ6XVFgVhcxX7Oz2o5TggVj99ac49Nml85U6TTjQeGuyp
 76okuh2BS+AzQIpku4tol5QBpbrCQBd72jSby10Z2Cjhy/s4j2hkPkXK+aOY7fA0nde6
 4OSrbTJuyKt5Q95qFGD6+NVuZZ+ya7YQtPCJcJgPs3c26wURmeVt836JhMbIsoQJ493f
 ruiSyX+r+LCYN/1l2LiieGE64IWVDDvVKuKvHu3Njuf4km+UJyidCx+fUTseneCSF5UN
 4tqXaHchQCf2Oa5OHAxVRIUig3A26tBHmFl66nsdwyuPBTMgGAMjLuM6Z/Ydpg+AG8MQ
 UlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uoEwMC4PgdCd/2qxe0qlEfyY7PtOw14vS+FFEP692MY=;
 b=o1ZQ+XRD+aEX/R0IkJCfw/nuQFSsJqQayNVcV+RDRK2wT+Q0mrZq5klY+N25HSyl4N
 sfgD5EZebpvD3F76CMLnjSME1xWl4GsYiARw49RFKP8j3E90y/5qs3RLDGnvzO/1hU5Z
 oExdANKKxKO7HPwrYgFy0Ij9EdpsvgtK36sw5T8R78ptNTdmiKOFKm0j13tBoXOwhmXa
 cDQDJdeKJ+XAbGs7b4U2I4ZCCTasfem4Cdh8oY7kE7X8eEUt5OopbSGbH6EPrvdhIDsE
 M7t6uvQ+nSGow2d89eK+PxE+meDw9OJAcsfeGQCFedcP9jPHvADBZ8wR1QzNGxglrbke
 OafA==
X-Gm-Message-State: AOAM533Jzn+A/M80JTTW9GQ+FLu/jxTPQubE90ikIW6w3Jzan3ly9I7l
 MvE29XmBqh6h2E5ZyO2vevMsWVq3Fms=
X-Google-Smtp-Source: ABdhPJzIKLa8wJPs3xhxVB9BdiCXtx37eKNLL7wMogKsBA7MkLoEbdt4WJG1Ra8S5yyEyxzRT4IV8w==
X-Received: by 2002:a5d:4c4b:: with SMTP id n11mr29258612wrt.381.1592258985851; 
 Mon, 15 Jun 2020 15:09:45 -0700 (PDT)
Received: from tool.localnet ([213.177.199.127])
 by smtp.googlemail.com with ESMTPSA id a15sm26075631wra.86.2020.06.15.15.09.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 15:09:45 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 16 Jun 2020 00:09:33 +0200
Message-ID: <2422792.mIOzrAvWME@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_150949_486795_560F7AF4 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: use the generic nand upgrade on
 Sercomm devices
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
Cc: noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIFNlcmNvbW0gZGV2aWNlcyBkb24ndCBuZWVkIHRoZSBqZmZzMiBjbGVhbm1hcmtlcnMgZm9y
IHRoZSBrZXJuZWwKcGFydGl0aW9uLiBXaXRoIHRoZSBzdG9jayBmaXJtd2FyZSB0aGV5IGFyZSBv
bmx5IGFkZGVkIHdoZW4gdGhlCmJvb3Rsb2FkZXIgcGFydGl0aW9uIGlzIHVwZ3JhZGVkLgoKRnVy
dGhlcm1vcmUsIG9uIHRoZSBTZXJjb21tIEg1MDAtcywgdGhlIHNwZWNpZmljIGNmZV9qZmZzMl91
cGdyYWRlX3RhcgpmdW5jdGlvbiBjYXVzZXMgT09CIGNvcnJ1cHRpb24uIEFzIGEgcmVzdWx0IG9m
IHRoaXMsIGNvbWJpbmVkIHdpdGggdGhlIApuYXR1cmUgb2YgdGhlIG10ZHNwbGl0IGRyaXZlciwg
dGhlIHVwZ3JhZGUgcHJvY2VkdXJlIGVuZHMgaW4gYSBicmlja2VkCmRldmljZS4KClVzZSB0aGUg
Z2VuZXJpYyBuYW5kX2RvX3VwZ3JhZGUgcHJvdmlkZWQgYnkgdGhlIE9wZW5XcnQgY29tbW9uIGZ1
bmN0aW9ucy4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb256w6FsZXogQ2FiYW5lbGFzIDxkZ2Ni
dWV1QGdtYWlsLmNvbT4KLS0tCiB0YXJnZXQvbGludXgvYmNtNjN4eC9iYXNlLWZpbGVzL2xpYi91
cGdyYWRlL3BsYXRmb3JtLnNoIHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4
L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggYi90YXJnZXQvbGludXgvYmNtNjN4
eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCmluZGV4IDUyNWQzYjkwYjUuLjBk
ODM2NzI5ZWUgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY202M3h4L2Jhc2UtZmlsZXMvbGli
L3VwZ3JhZGUvcGxhdGZvcm0uc2gKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvYmFzZS1maWxl
cy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaApAQCAtNzAsMTIgKzcwLDE1IEBAIHBsYXRmb3JtX2Rv
X3VwZ3JhZGUoKSB7CiAJCWNvbXRyZW5kLHZnLTgwNTB8XAogCQljb210cmVuZCx2ci0zMDMydXxc
CiAJCWh1YXdlaSxoZzI1M3MtdjJ8XAotCQluZXRnZWFyLGRnbmQzNzAwLXYyfFwKKwkJbmV0Z2Vh
cixkZ25kMzcwMC12MikKKwkJCVJFUVVJUkVfSU1BR0VfTUVUQURBVEE9MQorCQkJY2ZlX2pmZnMy
X3VwZ3JhZGVfdGFyICIkMSIKKwkJCTs7CiAJCXNlcmNvbW0sYWQxMDE4fFwKIAkJc2VyY29tbSxo
NTAwLXMtbG93aXxcCiAJCXNlcmNvbW0saDUwMC1zLXZmZXMpCiAJCQlSRVFVSVJFX0lNQUdFX01F
VEFEQVRBPTEKLQkJCWNmZV9qZmZzMl91cGdyYWRlX3RhciAiJDEiCisJCQluYW5kX2RvX3VwZ3Jh
ZGUgIiQxIgogCQkJOzsKIAkJKikKIAkJCWRlZmF1bHRfZG9fdXBncmFkZSAiJDEiCi0tIAoyLjI3
LjAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
