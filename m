Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF8DB7A3C
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 15:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SGQeZRD5fHeyOA+g+HyUVWzKWEY0l0lqldr3qxEeayo=; b=YtmRBmJhF8CrxG
	3MsEdJ+Ls3i+c1Q4I8CcYZLowntqeV3XsQXAGtlsrnUDS19hUdQISp3DiDw4GN8WoVPxjpgshOUZB
	rT0TWQA+s290iKnD7w1mXQ+gji/l6vpffcXJbM2YSiW0pjexxumNLLFTCMTA9cVU8ebJKsg3T6/xA
	AlvhdBSaML0ogudcuP3T6G42Cox0CKPDaLCNAVooSGWhkCHpgZ4gjJrEEmEEgZ/XqU9DcHEcHJCVc
	TeAg37L1CEqWL/NhK4N1i9Mpk1/I46rMDg2WOM23oVM9/6r5ecmiMwXwEL6VOrDuLvyQwPPEM5FES
	KJ/5GPSshqrgv65IbKbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwFo-00017k-3o; Thu, 19 Sep 2019 13:13:48 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwFK-00016x-Qj
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 13:13:20 +0000
Received: by mail-qt1-x832.google.com with SMTP id c3so4079634qtv.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Sep 2019 06:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BFaLkpt7P/dho6rPFV4qzjLLkMuZY1IZLNnrCA0EviU=;
 b=ZseMkRIw5UC69SbRp6KU1g9QOFMG197nfdkXO+eraK89eO+UTmBJfdDqU9bmHqTCFl
 VpdqOhXD6MfQS0S/0Ou1ji2d+kmhHrMCh0VmgGOcUiyiLo3qBhFioXFzSSkV/2yBROPT
 JJgJyabeqG94Jt2ne2F7eREPZLtwnARgEdgOqyiOHnNvu5lZ+O8amBFo9LM/u85yS/do
 YyxCEP/qvzuyZerPclqJpv1BApe26e5SNRCI1wxF9lQ994s2LCaMDPFCCNtZnsTR+OGA
 iZ1IHMlkwbzKP/163aToIH1snyaKbV1+GxQa5PpH+dGwldk8//hsCpEgSz3xvJoaA8bP
 EuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BFaLkpt7P/dho6rPFV4qzjLLkMuZY1IZLNnrCA0EviU=;
 b=FPZ9660Q1Y/ptXGn8t6VanfVbE1LAf/iSVLi6QoiOB4pMbeILufWRlFk3wQaBoM+GM
 jol+j/eNWfh4Cwo2AjwgQMk+UQs9XIpjXDC2gzS6jgd0XMLJKsI7tsoLuikYjeTFpXV6
 bO39VP//I45O5IR5EzGwsQFfOJmy4smtpumdQ8Alh0+qVQ8CO4VHXw9XW/Vz5Fk7R8cV
 J15BFIAIJ4OtT0nIbI5XGjVpkxv2+BVWwBBGxvOH34QeNmUB6WHRgc2kjuwz1DsTADHI
 vdQijqdfqMx+lMOnL7IHEAOCK7fWEFGxxqyIu89FZk+suGrC7qAGYdgx0RGf5jEeBVVi
 Cf9g==
X-Gm-Message-State: APjAAAUD5awfI9CgI84/TlrM0ta3FLhXS1kK+KSspj2Ed0/iVbx4RKVR
 /E9njIDH51pbMo5FLzSBimsoONHI
X-Google-Smtp-Source: APXvYqzXklzyPRII8c71WPWdjhAjhCG2cCGsT6Iy5tnW/fobyDvE5bTAQ0wNOYHXyBbCcm6CvrJ9xg==
X-Received: by 2002:a05:6214:2e4:: with SMTP id
 h4mr7584174qvu.127.1568898795107; 
 Thu, 19 Sep 2019 06:13:15 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id y17sm5000083qtb.82.2019.09.19.06.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 06:13:14 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Sep 2019 10:13:01 -0300
Message-Id: <20190919131301.25065-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_061318_887594_742E5875 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:832 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH ustream-ssl] Update example certificate &
 key, fix typo
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The current crypto libraries will fail to load small RSA keys, so a new
certificate was generated with a 2048-bit RSA key.

Also fixed a typo in ustream-example-client.c

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

--
This is the output of 'openssl x509 -noout -text -in example.crt', with
the public key & signature binary blobs omitted:
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            15:bc:7e:f4:04:bd:f3:b4:79:e7:cb:57:d3:99:86:39:7c:d2:a8:df
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: CN = foo@bar.com
        Validity
            Not Before: Sep 18 17:31:27 2019 GMT
            Not After : Sep 19 17:31:27 2119 GMT
        Subject: CN = foo@bar.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (2048 bit)
                Modulus: (omitted)
                Exponent: 65537 (0x10001)
    Signature Algorithm: sha256WithRSAEncryption

diff --git a/example.crt b/example.crt
index 9ac235f..815565f 100644
--- a/example.crt
+++ b/example.crt
@@ -1,9 +1,17 @@
 -----BEGIN CERTIFICATE-----
-MIIBHTCByKADAgECAgRo1CQZMA0GCSqGSIb3DQEBBQUAMBYxFDASBgNVBAMTC2Zv
-b0BiYXIuY29tMB4XDTEyMTAyMjIyNDg1NFoXDTc2MDgyMjE2MjAzOFowFjEUMBIG
-A1UEAxMLZm9vQGJhci5jb20wXDANBgkqhkiG9w0BAQEFAANLADBIAkEAqU6orvsW
-TP0Q/bV3m41+HSaSA5YhggSSx/w8OYR0/owDz2vhpUfVHKaRGpg+H+Q2M7uPVxms
-LyUQNTaA8mNxKwIDAQABMA0GCSqGSIb3DQEBBQUAA0EAKcXv7EsiNYV/5dakVvic
-Rg2Rme5PFK2jkLFOhm/jnhNfNiXcMHx5hhtmrLnTugqyAzIkV14r9n63xYErj59M
-lQ==
+MIICujCCAaKgAwIBAgIUFbx+9AS987R558tX05mGOXzSqN8wDQYJKoZIhvcNAQEL
+BQAwFjEUMBIGA1UEAwwLZm9vQGJhci5jb20wIBcNMTkwOTE4MTczMTI3WhgPMjEx
+OTA5MTkxNzMxMjdaMBYxFDASBgNVBAMMC2Zvb0BiYXIuY29tMIIBIjANBgkqhkiG
+9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnvZT9GbaEiwcDFNl7cNSSvzK2cvQr1QmtpmF
+VEMeLPwXRxnvEJNvRMFXGWCYhmKMakdOdgcqKM8c6j5TbphYtGAXQRXGV3y0+1wW
+StTTaAkIIaarhZpmwgrT6agPYXUzXqhtOk8VmSwlUif/nQFYnOezgd9MR8Fo+Min
+YZJPAMWs7yUzQzCgq0S2YguVPUQ/NiXeNzRpxrl42Gh5kotd2RlJ8Ue7oxPOZs4W
+L7UH8hBZeRQj3CzWpI5fqOwmozl1LW8GUd91E4+YR+Hm043huhNjvwbA2asIduqd
+wXHcVDvKQXwuSojwC9Uo4eN/dMNSZd7q4k0gu3QmgNJZIMbO7QIDAQABMA0GCSqG
+SIb3DQEBCwUAA4IBAQAzNar5A+k6fHh3aGw3KB5/4jE7UxRAvTk9mp69/uc4V+qj
+oWEtGqP4nPmfL4+nFwoJJ5hvSWzRFvXRr2AtURMV/1anQk41gcMb3G7lNDC+X/zf
+t+xPx75O4heIALW84gdHZ7MY7guEFiLfprnX1l65uJeYvrKeG3cHY0YlDd2WFZGF
+DLPK61P/wGfOL4U1oDQF2rb09Wwx3rV8IfyPYu6ZTS+u6P43kF/4w+EJHexKhNyX
+Utym2sK05eMUWnraZouTeoRri2wvvjmIPZyldNsJ5HI6hU7fhT0B/BjJMrDXWRRS
+w72acdYB9pcu+2ABAKIwn07keYntiE4TjG9vBYqJ
 -----END CERTIFICATE-----
diff --git a/example.key b/example.key
index da69d0c..e4b3ba7 100644
--- a/example.key
+++ b/example.key
@@ -1,9 +1,28 @@
------BEGIN RSA PRIVATE KEY-----
-MIIBOQIBAAJBAKlOqK77Fkz9EP21d5uNfh0mkgOWIYIEksf8PDmEdP6MA89r4aVH
-1RymkRqYPh/kNjO7j1cZrC8lEDU2gPJjcSsCAwEAAQJAAiwxO/Wa5qgEtMzEWSmq
-qaMaEpO1oF6Ap7JT74UEn1OVOgnCZVdzUDu0vgWKc16vKfS+vIWU24A1VvHCqOyZ
-aQIhAPXuu2zAY1e1C0L8DWXl2BjPiz3Qr0nIMWsd4kE48WidAiEAsDztNFSnaRsy
-S3Zten+2uHCyZAMfYvxkUj96uUabomcCIAbAOebfVRrIPnnlP1zntUnhEJpuyxEE
-bM7a8CYIMSBFAiAcmrbxUHAfmh9uqhkY0dPJWdlKbEtS2J47zzvPCIvILwIgbtEL
-g29/1Fs/KyVa/sE9/oKpIBwux8UHQxg6epUKeuw=
------END RSA PRIVATE KEY-----
+-----BEGIN PRIVATE KEY-----
+MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCe9lP0ZtoSLBwM
+U2Xtw1JK/MrZy9CvVCa2mYVUQx4s/BdHGe8Qk29EwVcZYJiGYoxqR052Byoozxzq
+PlNumFi0YBdBFcZXfLT7XBZK1NNoCQghpquFmmbCCtPpqA9hdTNeqG06TxWZLCVS
+J/+dAVic57OB30xHwWj4yKdhkk8AxazvJTNDMKCrRLZiC5U9RD82Jd43NGnGuXjY
+aHmSi13ZGUnxR7ujE85mzhYvtQfyEFl5FCPcLNakjl+o7CajOXUtbwZR33UTj5hH
+4ebTjeG6E2O/BsDZqwh26p3BcdxUO8pBfC5KiPAL1Sjh4390w1Jl3uriTSC7dCaA
+0lkgxs7tAgMBAAECggEAFPk9VIbpiPJG9R1f2oIl7nzyKtBohWmd/gO9gsOkTJ0q
+WRhD4bUCPlkgK9oB5eFE05T69jm1x1KkZwe4LGRvd8Uh7FV6KPrsSin5SwBPsG9Y
+olACW4tmuX2CPlcNSHeVQo0IdGQQ3nfjqLZcVJPj5DfyCFW1E9aiCgk3hHkwcVJu
+ZJIqYyHfnRzVsTZrZZjYoeYWg1+oNozW3nlzs0CWi9hRGq9I1fASm1LMRDITgFpW
+8zXSrvKY4WALCaqCX1vFBfo/f3pmm0SIom4apTvyH+U+tHFmJofP0Y49cDc/ngHe
+fbug/Od5ScfDTu111Fqb5NWz8ju6B7odhBj1RFvWIQKBgQDMzXOOZ969AjEyRsaH
+1aG+MNEwU32fSHhiDr7vGTgeAf2Zn2b0/NLxxn5l7dF6t0bvo5hNCIa4q0YTuv62
+grtssbOvKFGb+xdQufYH6gRMFjjGs83QYXoDpDNHjdscBjaTy9aEoo1wUQbYfAaF
+4zZqLKQB0Crfaj28lwXqDaCMdQKBgQDGs0cnWX3NTwCpu+CF7czkeUZWgnRWq3Xk
+oGHrcPAx4hiNU2+E2+5dR9ZvmU3f4DpSA8ObPMUtsfb1KfOYRq3se98tyB/6nnX5
+IU5WPhpvL+CxxutLt1doMsjknuspbUT/hfTOjwLddCK/KWpRxO7OPwt1hZsCPmie
+IZ7rUf/JmQKBgHhlgzxBRcj5Q/CZeNabuST0z9VID76WvOZwYsBuo/XIF8y6z6zQ
+ADZQCThksVQh8FqqYrtOetyPG3g34stqWUJRyR78ZdV7q74yRDds1C/ilGgDhcet
+tivz2I2FED0OTgFewHJimSFhENQtPSxyYSfTrGrAdKO4ciiu47QvZKWNAoGAKqld
+UpaFSyp2Mvsypq66+icLshFKVz1zD4Zb38gc2ij4KofKftUVpZOB9+4LaVDkVK2Y
+NuFiWIBITLUYJw6t0wN5lIPOUenp3HaJMj0dQdgevyy9YkFYE/grZ+KzDO74DIC/
+YgYUkGWZ/D8xI6NLvp6MoEvyTxYFMkZ3r4CokakCgYBRma6oAv94NOyAPgqshY8d
+vxouqB07N8Km6Helfi5cnuihBejS5q1MJ15IOHdJXTW1mKpTNDT4y5ARzEcBXKNV
+3DmOQ4bKhOameOCyG3RCWLOdjXxy4siIfMFkVC29/vlr+O6qZq1sSh355Qzx62Kw
+FC1yIKb5d4EfoAejMuKWAA==
+-----END PRIVATE KEY-----
diff --git a/ustream-example-client.c b/ustream-example-client.c
index 6527362..4fc99f0 100644
--- a/ustream-example-client.c
+++ b/ustream-example-client.c
@@ -80,7 +80,7 @@ static void client_notify_state(struct ustream *us)
 
 static void example_connect_ssl(int fd)
 {
-	fprintf(stderr, "Starting SSL negnotiation\n");
+	fprintf(stderr, "Starting SSL negotiation\n");
 
 	ssl.notify_error = client_notify_error;
 	ssl.notify_verify_error = client_notify_verify_error;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
