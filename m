Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F811DE30A
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 11:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2OJEqi4ou2k7jEYBp+ejuozKmvhmiOMI2sxuljszETk=; b=JWu/rKG1+cnLi1
	GKsMhdeyqc9Jq5MAIPb68WhXig0uvJYtOGtwTtT1J5jOquDMYTTk/8FZbBKLOqBukw/VfedParnCn
	1XddelMn+gQnMy0Kz+IjrMEFLzuIe10C/HWuO8DlIs0VIEoOko2IQlP5O/RNNLcf5GGvVbb2G02Uj
	BlUFlpoiaYiNU+9zQqxi74aycUBaiMvYkWs3lFaxeoZwwvdk2QVX/z5PxBmF+Aa9nTmyTpaYejgMX
	c4U6h90pSl+z1FlHxSxIXV3/pDnqVTJRODUJhVRAbTwLb5t/RxgIn6Hh4WbENvxRDoi03bGjxv7Rc
	gkqgi/cU51XPW4Tl1G6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3yg-00071j-AB; Fri, 22 May 2020 09:28:30 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3yY-0006zF-VF
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 09:28:24 +0000
Received: by mail-lj1-x22c.google.com with SMTP id k5so11781125lji.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 02:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=ir2umKsYaCikjfAGX7usmQsc9vszWnFVDRaR6mTLDi0=;
 b=jlqsNi32u1z+SOE8h6vTHPOTvtyxFsKqHj1Wa3KLlvd9kbrwUXj4hzcxT4T7N+1a17
 6OE0dRS1C1anLd3mqHWT7S8eNPfcil9iOi7KjxCXq0RUa/QRLabBf3uasxjB+r1LMbLx
 BMCF/L1Qq/VN08GUj9rK7PM3WvSStoIRmIwxljPtvdfstHpTLKuv2IbrcCNK8883H1Jd
 yqom+1v8WM/ykjB09emAffNBGhlQjZSYQKRLG6VYSRCM9jNQxUlFY5d3j3J+nmGR8yd+
 X0/jsLAeCZLkHKVyl2oiKZFMCc+D05yWgxhAIVFbOgWszmjJ+PEKJsvQx1ZVW9m4bMaD
 V1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ir2umKsYaCikjfAGX7usmQsc9vszWnFVDRaR6mTLDi0=;
 b=BDnkoIDN1VUNnm2vrrOlnWANTKA6HdEPXnUZZ2TQjAT8fm5M4khYqs52HuHwIqVfFU
 8uMeisE1djyW2yo08Z60wiex5ZYcESmEmf70lYtruY0ae5HpFVJYzNTd/IvnUVIcaSX9
 ozZ0Tr6Kqj+v2siHs7O52DBlZKxr+ugGZfJBx/V5Me2rvWtDuCF+5HLhB7Tm3vaP6N+g
 4X55QcnnaZX1QA/h+7Hk91lFVCp6l4yfigCEsE5aJhoqqzf97Ufy3akj5XuQhVNaGrFm
 4wER9AlMP1OTJ6AiKDzWUv+iMpyX6IA+lvUpTljIziHByM5/4Sh4fpnyxC2qzZtb4cwf
 VzTg==
X-Gm-Message-State: AOAM532IBMRqlx4642azFqkXdqdD8gHexiW3RU1pGJ6UP7CIaJ1n0Qal
 5EersAy0jHlle6YNDdpBL5k=
X-Google-Smtp-Source: ABdhPJxbPJCOvj2NYZbh1ks8SxlchAl9Xt7wrhhUvz8+B0YYYE2e3ETKKYgDBuOKdrWxCUonUaiFIA==
X-Received: by 2002:a05:651c:2de:: with SMTP id
 f30mr5166031ljo.450.1590139695433; 
 Fri, 22 May 2020 02:28:15 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id i8sm2617992lfl.72.2020.05.22.02.28.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 02:28:14 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Chris Nisbet <nischris@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 John Crispin <john@phrozen.org>
Message-ID: <6ab2bd22-4a43-b2ed-da40-36a77df72800@gmail.com>
Date: Fri, 22 May 2020 11:28:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_022823_007828_0EA16C20 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] procd fails to start /sbin/netifd randomly (libubox
 regression)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I noticed procd regression caused by libubox commit 75e300aeec25
("blobmsg: fix wrong payload len passed from blobmsg_check_array").

Calling "/etc/init.d/network restart" over and over will eventually
result in procd not starting netifd. Sometimes failure doesn't occur
and reboot is required. This makes it sound like some random memory
problem (accessing uninitialized data?).

I added some some debugging to procd's instance_fill_array() - diff
attached.

Backtrace for this failure is:
instance_fill_array()
instance_config_parse()
instance_init()
service_instance_add()

Successful restart:
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] blobmsg_type(cur): 2 (BLOBMSG_TYPE_TABLE)
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] BEFORE 75e300aeec25:
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] blob_len(cur): 36
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] blobmsg_check_attr_len(cur, false, 36): 1
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] [for_each_attr] blobmsg_name(sub): core blobmsg_type(sub): 3 (BLOBMSG_TYPE_STRING)
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array]  AFTER 75e300aeec25:
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] blobmsg_len(cur): 24
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] blobmsg_check_attr_len(cur, false, 24): 1
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] [for_each_attr] blobmsg_name(sub): core blobmsg_type(sub): 3 (BLOBMSG_TYPE_STRING)
Fri May 22 09:21:53 2020 daemon.err procd: [instance_fill_array] blob_attr *cur as JSON: {      "core": "unlimited" }

Failed restart:
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] blobmsg_type(cur): 2 (BLOBMSG_TYPE_TABLE)
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] BEFORE 75e300aeec25:
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] blob_len(cur): 36
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] blobmsg_check_attr_len(cur, false, 36): 1
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] [for_each_attr] blobmsg_name(sub): core blobmsg_type(sub): 3 (BLOBMSG_TYPE_STRING)
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] [for_each_attr] blobmsg_name(sub):  blobmsg_type(sub): 5 (BLOBMSG_TYPE_INT32)
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array]  AFTER 75e300aeec25:
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] blobmsg_len(cur): 24
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] blobmsg_check_attr_len(cur, false, 24): 1
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] [for_each_attr] blobmsg_name(sub): core blobmsg_type(sub): 3 (BLOBMSG_TYPE_STRING)
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] blob_attr *cur as JSON: {      "core": "unlimited" }
Fri May 22 09:22:05 2020 daemon.err procd: [instance_fill_array] blobmsg_check_attr_list() failed

As you can see, libubox fix resulted in blobmsg_check_array_len()
actually iterating over sub-attr-s but also failing occasionally.


[0] https://git.openwrt.org/?p=project/libubox.git;a=commitdiff;h=75e300aeec25e032a9778bea34c713969960d1f0


diff --git a/service/instance.c b/service/instance.c
index e5615d5..95154c2 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -771,16 +771,64 @@ instance_fill_any(struct blobmsg_list *l, struct blob_attr *cur)
  	blobmsg_list_fill(l, blobmsg_data(cur), blobmsg_data_len(cur), false);
  }

+#include <libubox/blobmsg_json.h>
+#include <libubox/blobmsg.h>
+
+static char *blobmsg_type_name(int type)
+{
+	switch (type) {
+	case BLOBMSG_TYPE_UNSPEC: return "BLOBMSG_TYPE_UNSPEC";
+	case BLOBMSG_TYPE_ARRAY: return "BLOBMSG_TYPE_ARRAY";
+	case BLOBMSG_TYPE_TABLE: return "BLOBMSG_TYPE_TABLE";
+	case BLOBMSG_TYPE_STRING: return "BLOBMSG_TYPE_STRING";
+	case BLOBMSG_TYPE_INT64: return "BLOBMSG_TYPE_INT64";
+	case BLOBMSG_TYPE_INT32: return "BLOBMSG_TYPE_INT32";
+	case BLOBMSG_TYPE_INT16: return "BLOBMSG_TYPE_INT16";
+	case BLOBMSG_TYPE_INT8: return "BLOBMSG_TYPE_INT8";
+	case BLOBMSG_TYPE_DOUBLE: return "BLOBMSG_TYPE_DOUBLE";
+	default: return "ERROR";
+	}
+}
+
  static bool
  instance_fill_array(struct blobmsg_list *l, struct blob_attr *cur, blobmsg_update_cb cb, bool array)
  {
  	struct blobmsg_list_node *node;
+	struct blob_attr *sub;
+	char *json = NULL;
+	size_t len;

  	if (!cur)
  		return true;

-	if (!blobmsg_check_attr_list(cur, BLOBMSG_TYPE_STRING))
+	ERROR("[%s] blobmsg_type(cur): %d (%s)\n", __func__, blobmsg_type(cur), blobmsg_type_name(blobmsg_type(cur)));
+
+	len = blob_len(cur);
+	ERROR("[%s] BEFORE 75e300aeec25:\n", __func__);
+	ERROR("[%s] blob_len(cur): %d\n", __func__, len);
+	ERROR("[%s] blobmsg_check_attr_len(cur, false, %d): %d\n", __func__, len, blobmsg_check_attr_len(cur, false, len));
+	__blobmsg_for_each_attr(sub, cur, len) {
+		ERROR("[%s] [for_each_attr] blobmsg_name(sub): %s blobmsg_type(sub): %d (%s)\n", __func__, blobmsg_name(sub), blobmsg_type(sub), blobmsg_type_name(blobmsg_type(sub)));
+	}
+
+	len = blobmsg_len(cur);
+	ERROR("[%s]  AFTER 75e300aeec25:\n", __func__);
+	ERROR("[%s] blobmsg_len(cur): %d\n", __func__, len);
+	ERROR("[%s] blobmsg_check_attr_len(cur, false, %d): %d\n", __func__, len, blobmsg_check_attr_len(cur, false, len));
+	__blobmsg_for_each_attr(sub, cur, len) {
+		ERROR("[%s] [for_each_attr] blobmsg_name(sub): %s blobmsg_type(sub): %d (%s)\n", __func__, blobmsg_name(sub), blobmsg_type(sub), blobmsg_type_name(blobmsg_type(sub)));
+	}
+
+	json = blobmsg_format_json_indent(cur, true, 0);
+	if (json) {
+		ERROR("[%s] blob_attr *cur as JSON: %s\n", __func__, json);
+		free(json);
+	}
+
+	if (!blobmsg_check_attr_list(cur, BLOBMSG_TYPE_STRING)) {
+		ERROR("[%s] blobmsg_check_attr_list() failed\n", __func__);
  		return false;
+	}

  	blobmsg_list_fill(l, blobmsg_data(cur), blobmsg_data_len(cur), array);
  	if (cb) {

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
