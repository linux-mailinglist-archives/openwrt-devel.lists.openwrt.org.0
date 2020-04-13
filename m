Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3F21A664D
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 14:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=jeK2NtGFe4aqVDHOqFch/uIbBZy7rWPBLe7imVrDKOI=; b=EqJXDtqsq3rBdx
	5JfS6PsDAUDd5qlJmKZJ2wUr80AUbdteD2D+p2nQz6xctOWasWjk2cIkqvPT5Bi/40I3VgFQNtnmS
	pe5j2TcioeqVqsqeLLfFsinY0vtzVp15WP4TgH6rR0j7l6sP+VCupVQeZgQWaKxf/Rdc2GxExu02/
	CRHKbNU65IYh5pYiJ9yGyTb76nSMpraRllqArnKdMy/ke3oQRqg2oUutzELSBz+3yZjj4ZLMAlIvg
	vTz6zND5p28ma2XArBS0+uhUSUWGGjezR9yG09nqmb0ngTfh1v9fUPA+BKWq604OVwJs0k7hKm7/8
	TiwgcZnJMtU4whXpQhfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNy9a-0006ad-Lx; Mon, 13 Apr 2020 12:25:30 +0000
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 14:25:02 +0200
References: <be78ebbf-73c9-89c5-1a90-dc4c6efe1861.ref@yahoo.com>
MIME-Version: 1.0
Message-ID: <mailman.3040.1586780726.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "R. Diez via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] Replacement for scripts/timestamp.pl
Content-Type: multipart/mixed; boundary="===============2692259831360651397=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2692259831360651397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2692259831360651397==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic309-24.consmr.mail.ir2.yahoo.com ([77.238.179.82])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNy9T-0006aJ-So
	for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 12:25:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1586780720; bh=sKQnjNlEJoKNzqn5kslFk6gRQjKgEwzfLWWHMfsFk5o=; h=From:Subject:To:Date:References:From:Subject; b=d+a9BqS6sh3Tkep95RUVTX51xr6uwHxY/lV0rAofQM5I97r0jSqc6ssKZhiWfpJsuToGkcpJmS34WCxSQ3BYBXkstYdHcPPj10YK+0Fc764nSNOaVL8HjWfcupgvzbmpwNbW6+yziQeawEBcEFfYl0DULX3dV9keVsU+3DrPSPBCPmOWq6k76hLYev8I7tpAXE6PwxHIV4sAGXXvQOHNyqbwZkjmk6XimC6fGmAoRry2mwLH60K7lf2dWeCer3qZNgxYdLF/Gz5vMIZpEUNYSm8ypcZtHPzmhubhv12C2gcwgcPSyTLWHLpoKD6j9PuMirQ8Nyl23syeDKd9fmZo9A==
X-YMail-OSG: Yd6S3VoVM1nlMryflEgLDPPEfEZdCNtjfu2RKdzD3Bf6JZFC1pM2QV94EAolwIE
 s.DgbKcRHiZReOPtskXiEDRNT0WQe1WzqOE5dRrwTNk.5lwbr4mwL_Lmu4.3_jsUE3X_YaOVzmCO
 9WExDXLe8_yBiCxa.1_M6vJYl6aWS_mTY8fXwIlytfwJjW1xCgtegpmrBm63LzxvLAkDhoViRwRV
 RESV3E1CPN1vTaQ_oKJQmlDOmbBi.MlGLTe_ZoJ7edxDCaTX8UAU_wQ1Xoq_E6l0TRoyJjxNQaTl
 OckoWkpAJYJQEjIqtOOWqMS5qc6QRVgwXdE4irBqpMxVM8gd0boh0UGzRLqnxnrYIhkf7T0mzPNL
 QYMYJhOb4knnB5hJ5N0Et8wFDhNEbGm1ZzHiHjRFZwQd_ui4ETw.Appf0.mPmxm3K93YyTeTm6Y.
 AofgVCeeNADMQVcSAbE2_6vfPbOgi9MEjRwCFYvORsFToX_zd3VxIUVUIcPJZgUbfMJXykcrGW4R
 TICCX8tWQKMu7ViuGnP17HaU_h4lniuazQc7lehJ.rTsqYXx8jme7ydGLSRq1rAaZfu8xQeWD4se
 hn3iuxBvAIww.U3OFp4XHi3yu0vgSm6rnXPvhUKq984ppNsfKMyjEOZeKK712F36up_r1_vVO7fE
 svSce2tjEmJJjroLYuobXGTIDi1Rf1GDuhU8nbaGF47JvRlAH7siRmapzS3PZFGPopi9zRgON9xz
 V.mSx.rr8dRCCg04Um0UJZ.RFp3mU6wl.4K4uXB_5HRmlbb52KnULRvYKw_2Hr7hOcRAlGDY3emy
 Dh88ccLZTOaZ2d0_uRc6J66TzrV4TN6m_u0cH6_OlErUw5nAvuiGQucj.bgoqNAguDLPJ.5.ymLi
 Y6e5OlvpKO9lpEqTKLIAZZCE7cQDByb_5aSGwSVkK6H.K4LUw2WZjWOolEb.F43b.jmdl.bAL3WK
 TqAblEyI3G69ojZcQmHbWptB193VRcPCrhi2abztoYt7j2w9FnZKUzXqvR2qEtE4F_swSs9vTZrR
 p.Mxrzr4lgFpXHUn3B33KrbqUpXus4r6L6.X9AALkp3Ea6fakWMrISPivh3JZ2.TIvvIprBQSDLp
 kvhxCgwanCvzkYg3nGG3POOhG7U9xVoC4m0jrKNMOtI2Bx7EOl0BiNeUSD9eJq3aGm3zfK7Ss4X2
 5tph.VhGTR1Ge2stEABjPyq8tHTeekkHAB995vuSp3xExL.T.sLxLgRK1mmfwEVGA0AwppLKhek4
 vJubYq5SWuOZS2QD37TKVREqmLfjWiccvHESY4dqaj8ml8wsGEt9Jz7LYsJy0V0FoGKhjZXGtLuu
 JnYQaeYmJv2zSX93P5Q0QVtdoKfMVPdHc22UR5eQfpHvovuPHNlSehIu4B69KjRQlS6knYFqr75Z
 I8kIQAytCsRlp8YVlwyprfhoGrHFxrmqBrtze6NwOVTgPoteOfLeOEvyFFqhzMzW8z10-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.ir2.yahoo.com with HTTP; Mon, 13 Apr 2020 12:25:20 +0000
Received: by smtp417.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 9009bb6ebd67372641fa847fa90fef9d;
          Mon, 13 Apr 2020 12:25:03 +0000 (UTC)
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Subject: Replacement for scripts/timestamp.pl
To: openwrt-devel@lists.openwrt.org
Message-ID: <be78ebbf-73c9-89c5-1a90-dc4c6efe1861@yahoo.com>
Date: Mon, 13 Apr 2020 14:25:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
References: <be78ebbf-73c9-89c5-1a90-dc4c6efe1861.ref@yahoo.com>
X-Mailer: WebService/1.1.15620 hermes Apache-HttpAsyncClient/4.1.4 (Java/11.0.6)
Content-Length: 671
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_052524_064751_7DEE1D38 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [77.238.179.82 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rdiezmail-openwrt[at]yahoo.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [77.238.179.82 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

Hi all:

Would you please consider replacing script scripts/timestamp.pl with this one I wrote?

   https://github.com/rdiez/Tools/tree/master/Timestamp

The new script is compatible with the existing one in OpenWrt, at least as far as the OpenWrt build system is using it.

With my script, I can set an environment variable to trace which files are triggering a rebuild.

You will find further reasons in the new script's documentation about why it is a much better replacement.

I am doing this work because of the following issue:

   FS#2096 - A second 'make' always rebuilds something
   https://bugs.openwrt.org/index.php?do=details&task_id=2096

Regards,
   rdiez


--===============2692259831360651397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2692259831360651397==--
