Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A76136FA3
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 15:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NvPhZ1xb6z+6AndFiHuyL/N2bBukf+91Qa7uCcDcvKM=; b=lhpm3rcKRUVE7i
	SprjFwOXnLM7STtvrPg5Uikw9RzVjQ/KRUy8vgJSO0PbTrs7R5dFOqceV1hETd4zqr6bMywvHqaA/
	wkbk0jvmYfLyXKByD6AUyGpskrVuwnje5YQbDh9P7BAH8rtZLgjWBTmAyZ8s1d+CZAb3JICAGp200
	sQ2om7/DMK+XvT/oc9QZnkTvIJikRpd7fLjBqF4KZGNqy0T23FN/EUakSuXRopQ41L4/xwXea1tmb
	dBjVVcT7LLn9pxq0TbgRe73IGZDY9/zPlQQQCxj8cOVf4QsjuE/A3bhvE0ZV7/EdNeysWEiy5VKIl
	RTFvqx8hm0I7Ok8NGarA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvTf-0006eF-22; Fri, 10 Jan 2020 14:41:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvTS-0006co-Dr
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 14:41:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id r14so1659114lfm.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Jan 2020 06:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jGhv78kts75B8y77Sp5qjdKEVp/5j8toZ7SE8bx7WQk=;
 b=LGsagPaTQTW1NpMXbqFmbkkUsv9rechx2rfvqo31SZCRQKiOPlemsxG7S4sNCKr2KA
 qRkhQTuwl91RG5aUFD6kmZUnXEnjkUNf539j+I6ZdEjb6aJn/K2pR52Gpx+mxis55p5T
 Keg2pi4VDHfF8F5Di0yffElHOfSNXFUDVKdwC+uEseccRj11VusZVomz5J1AGZnoQG57
 2F46yvG43DuDJ12/Ii4RsjaKN2d3UCU+Or+SA+Ff5VuYn0jtMgYovgMG6DMLqf8UOOqJ
 RLHEWgTKOfSrNmIWa6V7B4SaTDyyrXdYSq5naqNGtN6+9h4b1O+s+POlFKYRm9BI18lf
 wlaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jGhv78kts75B8y77Sp5qjdKEVp/5j8toZ7SE8bx7WQk=;
 b=UdFBR9cCK0XVToC6oJ17gntN1/SDO5C7gE6uljlQBFyGDIuXvflTcBigHMlWibbyey
 +m+ENUn2deGddoT/vNyLklHkqMpw7R4aFa3znJtVmDaRJnRFjoZ02MWUP3MNMtvOK4Yk
 aTi4ZLqonFmWvaundY9v2b9vzouqkTtQb6xHeINjWjgANnmEGnRfCsotk3DWK9Yh97ML
 OlSiPtuRXHqoraEUnZxHbk/iKwZdtJeM/DxTwsZYWu0h3FXfxp+O4jBBR+PORDtYL4DC
 dV5LjG8w8A1JjgNg0qPUVpKFVQ9iiUjmQyEkovniUzMxOwuobtJ9AJ+FYraFgZP+US7Y
 bP9Q==
X-Gm-Message-State: APjAAAU+jZTDQ7HX05ddin+5W/u11lcFwVKWYnd7MJ6vrZVJusXVSks0
 WbnP75Koi3ZhteUx1pXtXKn3HoNDBuw=
X-Google-Smtp-Source: APXvYqxJWhvgPWQcHqMh0WVg54v53K7WwAtFkUfu7mgDI5EI8yKX47LjwPdIEK5wG0Q8qb/ysQwVNg==
X-Received: by 2002:a19:f716:: with SMTP id z22mr2739706lfe.14.1578667276370; 
 Fri, 10 Jan 2020 06:41:16 -0800 (PST)
Received: from DJ-Precision.corp.ubnt.com
 ([2a02:2880:3:1ff:34f6:2eba:7a3:8599])
 by smtp.gmail.com with ESMTPSA id e9sm1087510ljp.75.2020.01.10.06.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 06:41:15 -0800 (PST)
From: Dainis Jonitis <jonitis@gmail.com>
X-Google-Original-From: Dainis Jonitis <dainis.jonitis@ubnt.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Fri, 10 Jan 2020 16:41:04 +0200
Message-Id: <20200110144104.25291-1-dainis.jonitis@ubnt.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_064119_059024_D093CFF4 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonitis[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] blobmsg: blobmsg_add_json_element() 64-bit
 values
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
Cc: Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

libjson-c json_type_int values are stored as int64_t. Use
json_object_get_int64() instead of json_object_get_int()
to avoid clamping to INT32_MAX.

Signed-off-by: Dainis Jonitis <dainis.jonitis@ubnt.com>
---
 blobmsg_json.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/blobmsg_json.c b/blobmsg_json.c
index 1859211..394861a 100644
--- a/blobmsg_json.c
+++ b/blobmsg_json.c
@@ -66,9 +66,15 @@ bool blobmsg_add_json_element(struct blob_buf *b, const char *name, json_object
 	case json_type_boolean:
 		blobmsg_add_u8(b, name, json_object_get_boolean(obj));
 		break;
-	case json_type_int:
-		blobmsg_add_u32(b, name, json_object_get_int(obj));
+	case json_type_int: {
+		int64_t i64 = json_object_get_int64(obj);
+		if (i64 >= INT32_MIN && i64 <= INT32_MAX) {
+			blobmsg_add_u32(b, name, (uint32_t)i64);
+		} else {
+			blobmsg_add_u64(b, name, (uint64_t)i64);
+		}
 		break;
+	}
 	case json_type_double:
 		blobmsg_add_double(b, name, json_object_get_double(obj));
 		break;
-- 
2.19.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
